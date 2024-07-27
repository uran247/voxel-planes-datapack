#> weapon:util/set-sun-dummy
#
# 太陽の方向にダミーエンティティを置く　ミサイル移動用
#
# @input
#   as @e[tag=missile-moving,tag=ir-missile]
#   at @e[tag=missile-moving,tag=ir-missile]
#
# @within
#   weapon:missile/ir-missile-manager
#   

#> private
#   @private
    #declare tag target-candidate #ミサイルロックオン候補
    #declare tag dummy-sun #ミサイルロックオン候補

#太陽の方向取得
function util:get-sun-rotation

#太陽がいる場合ダミーエンティティ設置
execute if data storage voxel-planes:return sun-rotation positioned 0.0 0.0 0.0 run data modify entity @e[tag=dummy-sun,limit=1] Rotation set from storage voxel-planes:return sun-rotation
execute if data storage voxel-planes:return sun-rotation positioned 0.0 0.0 0.0 run tag @e[tag=dummy-sun,limit=1] add target-candidate
execute if data storage voxel-planes:return sun-rotation as @e[tag=dummy-sun,limit=1] rotated as @s if loaded ^ ^ ^16 run tp @s ^ ^ ^16
