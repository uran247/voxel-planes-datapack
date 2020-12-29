#角度スコアを航空機に反映する、パーツの位置を調整する 爆弾を召喚する
#実行方法:execute as @e[tag=a6m2-root] at @s run function plane:position/a6m2-position
#実行者：機体　実行位置：機体

#seatの位置修正
execute at @s[tag=has-rider] run tp @e[tag=plane-seat,tag=target-parts] ^ ^ ^-2.5
execute at @s[tag=!has-rider] run tp @e[tag=plane-seat,tag=target-parts] ^ ^-0.5 ^0.8

#爆弾装備タグがついていて爆弾が0なら召喚
execute store result score @s[tag=has-bomb] vp.reg1 if entity @e[tag=target-parts,tag=plane-bomb]

execute as @s[tag=has-bomb,scores={vp.reg1=0}] if score @s vp.ammunition3 = @s vp.max-ammo3 at @s store success score #summoned-bomb vp.reg1 run function plane-data:a6m2/summon/a6m2-bomb
execute if score #summoned-bomb vp.reg1 matches 1.. as @e[tag=a6m2,tag=!dropping,tag=plane-bomb,distance=..10] if score @s vp.plane-id = #plane-id vp.reg1 run tag @s add target-parts
execute if score #summoned-bomb vp.reg1 matches 1.. run tag @s add need-calc-offset
scoreboard players set #summoned-bomb vp.reg1 0

