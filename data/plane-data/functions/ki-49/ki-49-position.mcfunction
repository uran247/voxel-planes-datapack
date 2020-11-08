#角度スコアを航空機に反映する、パーツの位置を調整する
#実行方法:execute as @e[tag=ki21-root] at @s run function plane:position/ki21-position
#実行者：機体　実行位置：機体

#seatの位置修正
execute at @s[tag=has-rider] run tp @e[tag=plane-seat,tag=target-parts] ^ ^1.5 ^-5
execute at @s[tag=!has-rider] run tp @e[tag=plane-seat,tag=target-parts] ^ ^ ^6.5

#爆弾装備タグがついていて爆弾が0なら召喚 爆弾召喚無しのため機動力補正のみつける
#execute store result score @s[tag=bombed] reg1 if entity @e[tag=target-parts,tag=plane-bomb] 
#execute as @s[tag=50kg,tag=bombed,scores={ammunition1=20,reg1=0}] store success score #summoned reg1 run function plane:summon/ki-21/ki-21-50kg-bomb
#execute as @s[tag=250kg,tag=bombed,scores={ammunition1=4,reg1=0}] store success score #summoned reg1 run function plane:summon/ki-21/ki-21-250kg-bomb
#execute if score #summoned reg1 matches 1.. as @e[tag=ki21,tag=!dropping,tag=plane-bomb,distance=..10] if score @s plane-id = #plane-id reg1 run tag @s add target-parts
#execute if score #summoned reg1 matches 1.. run tag @s add need-calc-offset
#scoreboard players set #summoned reg1 0
execute as @s[tag=250kg,tag=bombed,scores={ammunition1=4}] at @s run scoreboard players set @e[tag=body,tag=target-parts,limit=1] accelerate-cor -4
execute as @s[tag=250kg,tag=bombed,scores={ammunition1=4}] at @s run scoreboard players set @e[tag=body,tag=target-parts,limit=1] pitch-speed-cor -8
execute as @s[tag=250kg,tag=bombed,scores={ammunition1=4}] at @s run scoreboard players set @e[tag=body,tag=target-parts,limit=1] yaw-speed-cor -8
execute as @s[tag=500kg,tag=bombed,scores={ammunition1=1}] at @s run scoreboard players set @e[tag=body,tag=target-parts,limit=1] accelerate-cor -2
execute as @s[tag=500kg,tag=bombed,scores={ammunition1=1}] at @s run scoreboard players set @e[tag=body,tag=target-parts,limit=1] pitch-speed-cor -4
execute as @s[tag=500kg,tag=bombed,scores={ammunition1=1}] at @s run scoreboard players set @e[tag=body,tag=target-parts,limit=1] yaw-speed-cor -4

