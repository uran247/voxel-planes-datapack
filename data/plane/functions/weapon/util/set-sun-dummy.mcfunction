#> plane:weapon/util/set-sun-dummy
#
# 太陽の方向にダミーエンティティを置く ロックオン用
#
# @input
#   executer @e
#   position at @e
#
# @within
#   function plane:weapon/util/ir-search-target
#   

#> private
#   @private
    #declare tag target-candidate #ミサイルロックオン候補
    #declare tag dummy-sun #ミサイルロックオン候補

#dummy sun初期化
execute positioned 0.0 1.0 0.0 unless entity @e[tag=dummy-sun,distance=..0.01] run tp @e[tag=dummy-sun] 0.0 1.0 0.0
execute positioned 0.0 1.0 0.0 unless entity @e[tag=dummy-sun,distance=..0.01] run kill @e[type=marker,tag=dummy-sun]
execute positioned 0.0 1.0 0.0 unless entity @e[tag=dummy-sun,distance=..0.01] run summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity,dummy-sun]}

#太陽の方向取得
function util:get-sun-rotation

#太陽がいる場合ダミーエンティティ設置
execute if data storage voxel-planes:return sun-rotation run data modify entity 0-0-0-0-1 Rotation set from storage voxel-planes:return sun-rotation
execute if data storage voxel-planes:return sun-rotation positioned 0.0 1.0 0.0 run tag @e[tag=dummy-sun,limit=1] add target-candidate
execute if data storage voxel-planes:return sun-rotation positioned 0.0 1.0 0.0 rotated as 0-0-0-0-1 positioned as @s if loaded ^ ^ ^16 run tp @e[tag=dummy-sun,limit=1] ^ ^ ^16
#execute if data storage voxel-planes:return sun-rotation positioned 0.0 0.0 0.0 rotated as 0-0-0-0-1 positioned as @s run particle dust 1 1 1 2 ^ ^ ^16 0 0 0 0 100 force
