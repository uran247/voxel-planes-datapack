#> plane:controll/ai/renew-destination
#
# @within
#   function plane:controll/ai/set-destination
#
# @input
#   executer @e[tag=plane-root,tag=has-dummy-rider]

#> prv
# @private
  #declare score_holder #waypoint-list-num 到着したかを示すフラグ(到着:1、未到着:0)
  #declare score_holder #current-waypoint 到着したかを示すフラグ(到着:1、未到着:0)
  #declare score_holder #arrive 到着したかを示すフラグ(到着:1、未到着:0)
  #declare score_holder #arrive 到着したかを示すフラグ(到着:1、未到着:0)

#current-waypoint-indexを1+する、配列数以上の値になった場合0にする
execute store result score #waypoint-list-num vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ai.waypoints
execute store result score #current-waypoint vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ai.current-waypoint-index
scoreboard players add #current-waypoint vp.reg1 1
execute if score #current-waypoint vp.reg1 >= #waypoint-list-num vp.reg1 run scoreboard players set #current-waypoint vp.reg1 0
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ai.current-waypoint-index int 1 run scoreboard players get #current-waypoint vp.reg1

#現在目的地についているcurrent-waypointを取り除く
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ai.waypoints[{current-waypoint:1b}].current-waypoint

#current-waypoint-indexが示す目的地のcurrent-waypointをtrueにする
execute if score #current-waypoint vp.reg1 matches 0 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ai.waypoints[0] merge value {current-waypoint:1b}
execute if score #current-waypoint vp.reg1 matches 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ai.waypoints[1] merge value {current-waypoint:1b}
execute if score #current-waypoint vp.reg1 matches 2 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ai.waypoints[2] merge value {current-waypoint:1b}
execute if score #current-waypoint vp.reg1 matches 3 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ai.waypoints[3] merge value {current-waypoint:1b}
execute if score #current-waypoint vp.reg1 matches 4 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ai.waypoints[4] merge value {current-waypoint:1b}
execute if score #current-waypoint vp.reg1 matches 5 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ai.waypoints[5] merge value {current-waypoint:1b}
execute if score #current-waypoint vp.reg1 matches 6 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ai.waypoints[6] merge value {current-waypoint:1b}
execute if score #current-waypoint vp.reg1 matches 7 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ai.waypoints[7] merge value {current-waypoint:1b}
execute if score #current-waypoint vp.reg1 matches 8 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ai.waypoints[8] merge value {current-waypoint:1b}
execute if score #current-waypoint vp.reg1 matches 9 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ai.waypoints[9] merge value {current-waypoint:1b}
execute if score #current-waypoint vp.reg1 matches 10 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ai.waypoints[10] merge value {current-waypoint:1b}
execute if score #current-waypoint vp.reg1 matches 11 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ai.waypoints[11] merge value {current-waypoint:1b}
execute if score #current-waypoint vp.reg1 matches 12 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ai.waypoints[12] merge value {current-waypoint:1b}
execute if score #current-waypoint vp.reg1 matches 13 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ai.waypoints[13] merge value {current-waypoint:1b}
execute if score #current-waypoint vp.reg1 matches 14 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ai.waypoints[14] merge value {current-waypoint:1b}
execute if score #current-waypoint vp.reg1 matches 15 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ai.waypoints[15] merge value {current-waypoint:1b}
execute if score #current-waypoint vp.reg1 matches 16 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ai.waypoints[16] merge value {current-waypoint:1b}
execute if score #current-waypoint vp.reg1 matches 17 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ai.waypoints[17] merge value {current-waypoint:1b}
execute if score #current-waypoint vp.reg1 matches 18 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ai.waypoints[18] merge value {current-waypoint:1b}
execute if score #current-waypoint vp.reg1 matches 19 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ai.waypoints[19] merge value {current-waypoint:1b}
