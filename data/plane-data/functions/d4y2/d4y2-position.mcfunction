#角度スコアを航空機に反映する、パーツの位置を調整する
#実行方法:execute as @e[tag=d4y2-root] at @s run function plane:position/d4y2-position
#実行者：機体　実行位置：機体

#seatの位置修正
execute at @s[tag=has-rider] run tp @e[tag=plane-seat,tag=target-parts] ^ ^ ^-2.2
execute at @s[tag=!has-rider] run tp @e[tag=plane-seat,tag=target-parts] ^0.5 ^-0.4 ^3

#爆弾装備タグがついていて爆弾が0なら召喚
execute store result score @s[tag=bombed] reg1 if entity @e[tag=target-parts,tag=plane-bomb]
execute store result score @s[tag=rocketted] reg2 if entity @e[tag=target-parts,tag=plane-rocket] 

execute as @s[tag=bombed,scores={reg1=0}] if score @s ammunition2 = @s max-ammunition2 at @s store success score #summoned-bomb reg1 run function plane-data:d4y2/summon/d4y2-bomb
execute as @s[tag=rocketted,scores={reg2=0}] if score @s ammunition4 = @s max-ammunition4 at @s store success score #summoned-rocket reg1 run function plane-data:d4y2/summon/d4y2-rocket

execute if score #summoned-bomb reg1 matches 1.. as @e[tag=d4y2,tag=!dropping,tag=plane-bomb,distance=..10] if score @s plane-id = #plane-id reg1 run tag @s add target-parts
execute if score #summoned-bomb reg1 matches 1.. run tag @s add need-calc-offset
execute if score #summoned-rocket reg1 matches 1.. as @e[tag=d4y2,tag=!rocket-moving,tag=plane-rocket,distance=..10] if score @s plane-id = #plane-id reg1 run tag @s add target-parts
execute if score #summoned-rocket reg1 matches 1.. run tag @s add need-calc-offset
scoreboard players set #summoned-bomb reg1 0
scoreboard players set #summoned-rocket reg1 0

