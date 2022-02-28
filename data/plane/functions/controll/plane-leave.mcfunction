#> plane:controll/plane-leave
# 
# 飛行機から降りるときの処理
#
# @input
#   executer @p
#
# @within plane:tick
#

scoreboard players reset @s vp.plane-id
scoreboard players set @s vp.key-input 0
clear @s minecraft:crossbow{item-type:controll-rod}
clear @s minecraft:paper{item-type:indicator}
tag @s remove plane-rider
tag @s remove entity-nohit
