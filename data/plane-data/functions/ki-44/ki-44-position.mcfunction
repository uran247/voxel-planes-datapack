#角度スコアを航空機に反映する、パーツの位置を調整する
#実行方法:execute as @e[tag=ki43-root] at @s run function plane:position/ki43-position
#実行者：機体　実行位置：機体

#seatの位置修正
execute at @s[tag=has-rider] run tp @e[tag=plane-seat,tag=target-parts] ^ ^-0.7 ^-1.3
execute at @s[tag=!has-rider] run tp @e[tag=plane-seat,tag=target-parts] ^ ^-0.3 ^0.5

#爆弾装備タグがついていて爆弾が0なら召喚
execute store result score @s[tag=bombed] vp.reg1 if entity @e[tag=target-parts,tag=plane-bomb]

execute as @s[tag=bombed,scores={vp.reg1=0}] if score @s vp.ammunition2 = @s vp.max-ammo2 at @s store success score #summoned-bomb vp.reg1 run function plane-data:ki-44/summon/ki44-bomb
execute if score #summoned-bomb vp.reg1 matches 1.. as @e[tag=ki44,tag=!dropping,tag=plane-bomb,distance=..10] if score @s vp.plane-id = #plane-id vp.reg1 run tag @s add target-parts
execute if score #summoned-bomb vp.reg1 matches 1.. run tag @s add need-calc-offset
scoreboard players set #summoned-bomb vp.reg1 0
