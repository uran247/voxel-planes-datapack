#> plane-data:g4m1/g4m1-position
#
# plane-seatの位置を調整する
#
# @input
#   executer @e[tag=plane-root]
#
# @within plane:position/position

#seatの位置修正
execute at @s[tag=has-rider] run tp @e[type=armor_stand,tag=plane-seat,tag=target-parts] ^ ^2.5 ^-5
execute at @s[tag=!has-rider] run tp @e[tag=plane-seat,tag=target-parts] ^0.5 ^0.7 ^8

#爆弾装備タグがついていて爆弾が0なら召喚 爆弾召喚無しのため機動力補正のみつける
#execute store result score @s[tag=has-bomb] vp.reg1 if entity @e[tag=target-parts,tag=plane-bomb] 
#execute as @s[tag=torpedo,tag=has-bomb,scores={ammunition1=1,vp.reg1=0}] at @s run function plane:summon/g4m1/torpedo
execute as @s[tag=250kg,tag=has-bomb,scores={vp.ammunition1=4}] at @s run scoreboard players set @e[tag=body,tag=target-parts,limit=1] vp.acc-cor -4
execute as @s[tag=250kg,tag=has-bomb,scores={vp.ammunition1=4}] at @s run scoreboard players set @e[tag=body,tag=target-parts,limit=1] vp.pitch-spd-cor -8
execute as @s[tag=250kg,tag=has-bomb,scores={vp.ammunition1=4}] at @s run scoreboard players set @e[tag=body,tag=target-parts,limit=1] vp.yaw-spd-cor -8
execute as @s[tag=800kg,tag=has-bomb,scores={vp.ammunition1=1}] at @s run scoreboard players set @e[tag=body,tag=target-parts,limit=1] vp.acc-cor -3
execute as @s[tag=800kg,tag=has-bomb,scores={vp.ammunition1=1}] at @s run scoreboard players set @e[tag=body,tag=target-parts,limit=1] vp.pitch-spd-cor -6
execute as @s[tag=800kg,tag=has-bomb,scores={vp.ammunition1=1}] at @s run scoreboard players set @e[tag=body,tag=target-parts,limit=1] vp.yaw-spd-cor -6

#tellraw @p [{"nbt":"Pos","entity":"@s"}] 

