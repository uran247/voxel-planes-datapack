#> constructor:addstorage
#
# @public
    #declare storage minecraft:plane-datapack
    #declare storage minecraft:plane-datapack-weapon
    #declare storage voxel-planes:weapon
    #declare storage oh_my_dat:

#storage作成
data merge storage minecraft:plane-datapack {temporary:{Pos:[0.0d,0.0d,0.0d]},Items:[]}
data merge storage minecraft:plane-datapack-weapon {gun-data:[{plane-id:0,Pos:[0.0,0.0,0.0],speed:[0.0,0.0,0.0]}]}

#航空機個別ストレージ作成
execute unless data storage voxel-planes:weapon f4u1 run function plane-data:f4u-1/f4u1-storage