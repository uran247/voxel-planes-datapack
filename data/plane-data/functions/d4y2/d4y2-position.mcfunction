#角度スコアを航空機に反映する、パーツの位置を調整する
#実行方法:execute as @e[tag=d4y2-root] at @s run function plane:position/d4y2-position
#実行者：機体　実行位置：機体

#seatの位置修正
execute at @s[tag=has-rider] run tp @e[tag=plane-seat,tag=target-parts] ^ ^ ^-2.2
execute at @s[tag=!has-rider] run tp @e[tag=plane-seat,tag=target-parts] ^0.5 ^-0.4 ^3

#爆弾装備タグがついていて爆弾が0なら召喚
execute store result score @s[tag=has-bomb] vp.reg1 if entity @e[tag=target-parts,tag=plane-bomb]
execute store result score @s[tag=has-rocket] vp.reg2 if entity @e[tag=target-parts,tag=plane-rocket] 

execute as @s[tag=has-bomb,scores={vp.reg1=0}] if score @s vp.ammunition2 = @s vp.max-ammo2 at @s store success score #summoned-bomb vp.reg1 run function plane-data:d4y2/summon/d4y2-bomb
execute as @s[tag=has-rocket,scores={vp.reg2=0}] if score @s vp.ammunition4 = @s vp.max-ammo4 at @s store success score #summoned-rocket vp.reg1 run function plane-data:d4y2/summon/d4y2-rocket

execute if score #summoned-bomb vp.reg1 matches 1.. as @e[tag=d4y2,tag=!dropping,tag=plane-bomb,distance=..10] if score @s vp.plane-id = #plane-id vp.reg1 run tag @s add target-parts
execute if score #summoned-bomb vp.reg1 matches 1.. run tag @s add need-calc-offset
execute if score #summoned-rocket vp.reg1 matches 1.. as @e[tag=d4y2,tag=!rocket-moving,tag=plane-rocket,distance=..10] if score @s vp.plane-id = #plane-id vp.reg1 run tag @s add target-parts
execute if score #summoned-rocket vp.reg1 matches 1.. run tag @s add need-calc-offset
scoreboard players set #summoned-bomb vp.reg1 0
scoreboard players set #summoned-rocket vp.reg1 0

