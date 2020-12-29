#角度スコアを航空機に反映する、パーツの位置を調整する
#実行方法:execute as @e[tag=d3a-root] at @s run function plane:position/d3a-position
#実行者：機体　実行位置：機体

#seatの位置修正
execute at @s[tag=has-rider] run tp @e[tag=plane-seat,tag=target-parts] ^ ^ ^-3.7
execute at @s[tag=!has-rider] run tp @e[tag=plane-seat,tag=target-parts] ^-0.5 ^-0.4 ^1

#爆弾装備タグがついていて爆弾が0なら召喚
execute store result score @s[tag=has-bomb] vp.reg1 if entity @e[tag=target-parts,tag=plane-bomb] 
execute as @s[tag=has-bomb,scores={vp.ammunition2=3,vp.reg1=0}] at @s store success score #summoned vp.reg1 run function plane-data:d3a/summon/d3a-bomb
execute if score #summoned vp.reg1 matches 1.. as @e[tag=d3a,tag=!dropping,tag=plane-bomb,distance=..10] if score @s vp.plane-id = #plane-id vp.reg1 run tag @s add target-parts
execute if score #summoned vp.reg1 matches 1.. run tag @s add need-calc-offset
scoreboard players set #summoned vp.reg1 0

