#角度スコアを航空機に反映する、パーツの位置を調整する
#実行方法:execute as @e[tag=ki61-root] at @s run function plane:position/ki61-position
#実行者：機体　実行位置：機体

#seatの位置修正
execute at @s[tag=has-rider] run tp @e[tag=plane-seat,tag=target-parts] ^ ^-0.2 ^-4.3
execute at @s[tag=!has-rider] run tp @e[tag=plane-seat,tag=target-parts] ^ ^-0.4 ^0.5

#爆弾装備タグがついていて爆弾が0なら召喚
execute store result score @s[tag=bombed] reg1 if entity @e[tag=target-parts,tag=plane-bomb]

execute as @s[tag=bombed,scores={reg1=0}] if score @s ammunition3 = @s max-ammunition3 at @s store success score #summoned-bomb reg1 run function plane-data:ki-61/summon/ki61-bomb
execute if score #summoned-bomb reg1 matches 1.. as @e[tag=ki61,tag=!dropping,tag=plane-bomb,distance=..10] if score @s plane-id = #plane-id reg1 run tag @s add target-parts
execute if score #summoned-bomb reg1 matches 1.. run tag @s add need-calc-offset
scoreboard players set #summoned-bomb reg1 0
