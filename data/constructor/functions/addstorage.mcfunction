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
execute unless data storage voxel-planes:weapon a5m run function plane-data:a5m/a5m-storage
execute unless data storage voxel-planes:weapon a6m2 run function plane-data:a6m2/a6m2-storage
execute unless data storage voxel-planes:weapon a6m5 run function plane-data:a6m5/a6m5-storage
execute unless data storage voxel-planes:weapon d3a run function plane-data:d3a/d3a-storage
execute unless data storage voxel-planes:weapon d4y2 run function plane-data:d4y2/d4y2-storage
execute unless data storage voxel-planes:weapon f4u1 run function plane-data:f4u-1/f4u1-storage
execute unless data storage voxel-planes:weapon fw190d9 run function plane-data:fw190d-9/fw190d9-storage
execute unless data storage voxel-planes:weapon g4m1 run function plane-data:g4m1/g4m1-storage
execute unless data storage voxel-planes:weapon j2m3 run function plane-data:j2m3/j2m3-storage
execute unless data storage voxel-planes:weapon ki21 run function plane-data:ki-21/ki21-storage
execute unless data storage voxel-planes:weapon ki43 run function plane-data:ki-43/ki43-storage
execute unless data storage voxel-planes:weapon ki44 run function plane-data:ki-44/ki44-storage