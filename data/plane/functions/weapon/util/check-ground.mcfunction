#> plane:weapon/util/check-ground
#
# @input
#   as @e[tag=block-checker,distance=..1,x=0,y=1,z=0,limit=1]
#   at @e[tag=plane-root]
#
# @output
#   score #altitude vp.return 飛行機の対地高度
#   score #ground-y vp.return 地面のy座標
#
# @within function plane:weapon/util/display-aim/**

#> prv
# @private
    #declare tag ground-check
    #declare score_holder #ground-y

#準備
tp 0-0-0-0-9 0.0 1.0 0.0

#真下のブロック位置まで0-0-0-0-9をTP
execute rotated ~ 90 positioned ^ ^ ^256 run function plane:weapon/util/check-ground/step1

#距離計算
execute store result score #altitude vp.return run data get storage voxel-planes:input input[1]
    #tellraw @p [{"score":{"name": "#altitude","objective": "vp.return"}}]
execute store result score #ground-y vp.return run data get entity 0-0-0-0-9 Pos[1]
    #tellraw @p [{"score":{"name": "#ground-y","objective": "vp.return"}}]
    #tellraw @p [{"nbt":"Pos","entity": "0-0-0-0-4"}]
scoreboard players operation #altitude vp.return -= #ground-y vp.return
    #tellraw @p [{"score":{"name": "#altitude","objective": "vp.return"}}]

#リセット
tp 0-0-0-0-9 0.0 1.0 0.0
