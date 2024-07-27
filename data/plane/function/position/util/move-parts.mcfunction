#> plane:position/util/move-parts
#
# パーツを実行点+(vp.displacementX,vp.displacementY,vp.displacementZ)に移動
#
# @input
#   executer @e[tag=has-offset,tag=target-parts]
#   score @s vp.displacementX
#   score @s vp.displacementY
#   score @s vp.displacementZ
#
# @public

#> private
# @private
    #declare score_holder #current-x #現在のx座標
    #declare score_holder #current-y #現在のy座標
    #declare score_holder #current-z #現在のz座標

#パーツを移動
#入力：entity　@e[plane-parts] score: @s displacementX,Y,Z

#座標取得
data modify storage minecraft:plane-datapack temporary.Pos set from entity @s Pos
execute store result score #current-x vp.reg1 run data get storage minecraft:plane-datapack temporary.Pos[0] 1000
execute store result score #current-y vp.reg1 run data get storage minecraft:plane-datapack temporary.Pos[1] 1000
execute store result score #current-z vp.reg1 run data get storage minecraft:plane-datapack temporary.Pos[2] 1000
scoreboard players operation #current-x vp.reg1 += @s vp.displacementX
scoreboard players operation #current-y vp.reg1 += @s vp.displacementY
scoreboard players operation #current-z vp.reg1 += @s vp.displacementZ

#移動
execute store result storage minecraft:plane-datapack temporary.Pos[0] double 0.001 run scoreboard players get #current-x vp.reg1
execute store result storage minecraft:plane-datapack temporary.Pos[1] double 0.001 run scoreboard players get #current-y vp.reg1
execute store result storage minecraft:plane-datapack temporary.Pos[2] double 0.001 run scoreboard players get #current-z vp.reg1
data modify entity @s Pos set from storage minecraft:plane-datapack temporary.Pos
