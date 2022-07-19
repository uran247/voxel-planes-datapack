#> constructor:addstorage
#
# @public
    #declare storage minecraft:plane-datapack
    #declare storage minecraft:plane-datapack-weapon
    #declare storage voxel-planes:weapon
    #declare storage voxel-planes:plane
    #declare storage oh_my_dat:
    #declare storage voxel-planes:input
    #declare storage voxel-planes:return

#> private
#
# @private
    #declare score_holder #is-different-data #データバージョンが今のものと違うかどうかを示す

#storage作成
data merge storage minecraft:plane-datapack {temporary:{Pos:[0.0d,0.0d,0.0d]},Items:[]}
data merge storage minecraft:plane-datapack-weapon {gun-data:[{plane-id:0,Pos:[0.0,0.0,0.0],speed:[0.0,0.0,0.0]}]}

#data version指定
execute store success score #is-different-data vp.reg1 run data modify storage minecraft:plane-datapack data-version set value "0.7.0.00000014"

#航空機個別ストレージ作成
execute if score #is-different-data vp.reg1 matches 1 run function #constructor:add-storage
execute if score #is-different-data vp.reg1 matches 1 run say "storage data renewed"

