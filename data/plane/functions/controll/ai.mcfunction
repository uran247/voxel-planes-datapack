#> plane:controll/ai
#
# 
# 
#
# @input
#   executer @e[tag=plane-root,tag=has-dummy-rider]

#目標地点設定
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ai.waypoints[] run function plane:controll/ai/set-destination

#スロットル設定
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ai.waypoints[] run scoreboard players set @s vp.throttle 20