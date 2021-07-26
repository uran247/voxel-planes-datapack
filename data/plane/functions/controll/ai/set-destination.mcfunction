#> plane:controll/ai/set-destination
#
# @within
#   function plane:controll/ai
#
# @input
#   executer @e[tag=plane-root,tag=has-dummy-rider]

#> prv
# @private
  #declare score_holder #dest-x 目的地のx座標
  #declare score_holder #dest-y 目的地のy座標
  #declare score_holder #dest-z 目的地のz座標
  #declare score_holder #distance-x 目的地のx座標
  #declare score_holder #distance-y 目的地のy座標
  #declare score_holder #distance-z 目的地のz座標
  #declare score_holder #arrive 到着したかを示すフラグ(到着:1、未到着:0)
  #declare score_holder #waypoint-list-num 到着したかを示すフラグ(到着:1、未到着:0)
  #declare score_holder #current-waypoint 到着したかを示すフラグ(到着:1、未到着:0)
  #declare score_holder #arrive 到着したかを示すフラグ(到着:1、未到着:0)
  #declare score_holder #arrive 到着したかを示すフラグ(到着:1、未到着:0)


#目的地にすでに到着しているかチェック
#現在の目的地を取り出す
execute store result score #distance-x vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ai.waypoints[{current-waypoint:1b}].Pos[0] 10000
execute store result score #distance-y vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ai.waypoints[{current-waypoint:1b}].Pos[1] 10000
execute store result score #distance-z vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ai.waypoints[{current-waypoint:1b}].Pos[2] 10000

#現在の目的地と今の座標の距離を計算
scoreboard players operation #distance-x vp.reg1 -= @s vp.PosX
scoreboard players operation #distance-y vp.reg1 -= @s vp.PosY
scoreboard players operation #distance-z vp.reg1 -= @s vp.PosZ

scoreboard players operation #distance-x vp.reg1 /= #10000 vp.Num
scoreboard players operation #distance-y vp.reg1 /= #10000 vp.Num
scoreboard players operation #distance-z vp.reg1 /= #10000 vp.Num

scoreboard players operation #distance-x vp.reg1 *= #distance-x vp.reg1
scoreboard players operation #distance-y vp.reg1 *= #distance-y vp.reg1
scoreboard players operation #distance-z vp.reg1 *= #distance-z vp.reg1

scoreboard players operation #distance-x vp.reg1 += #distance-y vp.reg1
scoreboard players operation #distance-x vp.reg1 += #distance-z vp.reg1

  #tellraw @p [{"score" : {"name":"#distance-x", "objective":"vp.reg1"}}]

#半径30ブロック以内にいるなら到着とする
scoreboard players set #arrive vp.reg1 0
execute if score #distance-x vp.reg1 matches 0..900 run scoreboard players set #arrive vp.reg1 1

#到着していた場合current-waypointの更新実行
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ai.waypoints[{current-waypoint:1b}] run function plane:controll/ai/renew-destination
execute if score #arrive vp.reg1 matches 1.. run function plane:controll/ai/renew-destination

#current-waypointを元にanglegapを計算する
#現在の目的地を取り出す
execute store result score #dest-x vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ai.waypoints[{current-waypoint:1b}].Pos[0] 10000
execute store result score #dest-y vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ai.waypoints[{current-waypoint:1b}].Pos[1] 10000
execute store result score #dest-z vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ai.waypoints[{current-waypoint:1b}].Pos[2] 10000

#目的地-現在のPosを計算する
execute store result storage minecraft:plane-datapack temporary.Pos[0] double 0.000000007451 run scoreboard players operation #dest-x vp.reg1 -= @s vp.PosX
execute store result storage minecraft:plane-datapack temporary.Pos[1] double 0.000000007451 run scoreboard players operation #dest-y vp.reg1 -= @s vp.PosY
execute store result storage minecraft:plane-datapack temporary.Pos[2] double 0.000000007451 run scoreboard players operation #dest-z vp.reg1 -= @s vp.PosZ

#dummy-entityのPosに16/2^31倍して計算結果を代入し0,0,0からみた方向を向かせる
data modify entity 0-0-0-0-5 Pos set from storage minecraft:plane-datapack temporary.Pos
execute as 0-0-0-0-5 at @s anchored eyes facing 0.0 0.0 0.0 facing ^ ^ ^-1 run tp @s ~ ~ ~ ~ ~

#座標0,0,0からdummy-entityを見た方向を目標角度にしangle gapを計算する
#水平方向の目標角度取得(0未満なら左、0以上なら右)
execute store result score #source-rot vp.input run data get entity 0-0-0-0-5 Rotation[0] 100
scoreboard players operation #target-rot vp.input = @s vp.AngY
function util:get-angle-defference
scoreboard players operation @s vp.yaw-gap = #defference vp.return

#垂直方向の目標角度取得取得(0未満なら上、0以上なら下)
execute store result score #source-rot vp.input run data get entity 0-0-0-0-5 Rotation[1] 100
#角度を20度に制限
execute if score #source-rot vp.input matches ..-2001 run scoreboard players set #source-rot vp.input -2000
scoreboard players operation #target-rot vp.input = @s vp.AngX
function util:get-angle-defference
scoreboard players operation @s vp.pitch-gap = #defference vp.return

  #tellraw @p [{"text":"destination:"},{"nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ai.waypoints[{current-waypoint:1b}].Pos","storage": "oh_my_dat:"}]
  #tellraw @p [{"nbt":"Rotation","entity": "0-0-0-0-5"}]
  #tellraw @p [{"text":"angle-gap:"},{"score" : {"name":"@s", "objective":"vp.yaw-gap"}},{"text":" "},{"score" : {"name":"@s", "objective":"vp.pitch-gap"}}]

#dummy-entity返却
tp 0-0-0-0-5 0.0 0.0 0.0