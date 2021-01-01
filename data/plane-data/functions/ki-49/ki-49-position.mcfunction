#> plane-data:ki-49/ki-49-position
#
# plane-seatの位置を調整する
#
# @input
#   executer @e[tag=plane-root]
#
# @within plane:position/position

#seatの位置修正
execute at @s[tag=has-rider] run tp @e[tag=plane-seat,tag=target-parts] ^ ^1.5 ^-5
execute at @s[tag=!has-rider] run tp @e[tag=plane-seat,tag=target-parts] ^ ^ ^6.5

#爆弾装備タグがついていて爆弾が0なら召喚 爆弾召喚無しのため機動力補正のみつける
execute as @s[tag=250kg,tag=has-bomb,scores={vp.ammunition1=4}] at @s run scoreboard players set @e[tag=body,tag=target-parts,limit=1] vp.acc-cor -4
execute as @s[tag=250kg,tag=has-bomb,scores={vp.ammunition1=4}] at @s run scoreboard players set @e[tag=body,tag=target-parts,limit=1] vp.pitch-spd-cor -8
execute as @s[tag=250kg,tag=has-bomb,scores={vp.ammunition1=4}] at @s run scoreboard players set @e[tag=body,tag=target-parts,limit=1] vp.yaw-spd-cor -8
execute as @s[tag=500kg,tag=has-bomb,scores={vp.ammunition1=1}] at @s run scoreboard players set @e[tag=body,tag=target-parts,limit=1] vp.acc-cor -2
execute as @s[tag=500kg,tag=has-bomb,scores={vp.ammunition1=1}] at @s run scoreboard players set @e[tag=body,tag=target-parts,limit=1] vp.pitch-spd-cor -4
execute as @s[tag=500kg,tag=has-bomb,scores={vp.ammunition1=1}] at @s run scoreboard players set @e[tag=body,tag=target-parts,limit=1] vp.yaw-spd-cor -4

