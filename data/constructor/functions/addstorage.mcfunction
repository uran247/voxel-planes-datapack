#> constructor:addstorage
#
# @public
    #declare storage minecraft:plane-datapack
    #declare storage minecraft:plane-datapack-weapon
    #declare storage voxel-planes:weapon
    #declare storage voxel-planes:plane
    #declare storage oh_my_dat:
    #declare storage voxel-planes:input

#> private
#
# @private
    #declare score_holder #is-different-data #データバージョンが今のものと違うかどうかを示す

#storage作成
data merge storage minecraft:plane-datapack {temporary:{Pos:[0.0d,0.0d,0.0d]},Items:[]}
data merge storage minecraft:plane-datapack-weapon {gun-data:[{plane-id:0,Pos:[0.0,0.0,0.0],speed:[0.0,0.0,0.0]}]}

#data version指定
execute store success score #is-different-data vp.reg1 run data modify storage minecraft:plane-datapack data-version set value "0.2.0.202104016.7"

#航空機個別ストレージ作成
execute if score #is-different-data vp.reg1 matches 1 run function plane-data:a5m/a5m-storage
execute if score #is-different-data vp.reg1 matches 1 run function plane-data:a6m2/a6m2-storage
execute if score #is-different-data vp.reg1 matches 1 run function plane-data:a6m5/a6m5-storage
execute if score #is-different-data vp.reg1 matches 1 run function plane-data:d3a/d3a-storage
execute if score #is-different-data vp.reg1 matches 1 run function plane-data:d4y2/d4y2-storage
execute if score #is-different-data vp.reg1 matches 1 run function plane-data:f4u-1/f4u1-storage
execute if score #is-different-data vp.reg1 matches 1 run function plane-data:fw190d-9/fw190d9-storage
execute if score #is-different-data vp.reg1 matches 1 run function plane-data:g4m1/g4m1-storage
execute if score #is-different-data vp.reg1 matches 1 run function plane-data:j2m3/j2m3-storage
execute if score #is-different-data vp.reg1 matches 1 run function plane-data:ki-21/ki21-storage
execute if score #is-different-data vp.reg1 matches 1 run function plane-data:ki-43/ki43-storage
execute if score #is-different-data vp.reg1 matches 1 run function plane-data:ki-44/ki44-storage
execute if score #is-different-data vp.reg1 matches 1 run function plane-data:ki-61/ki61-storage
execute if score #is-different-data vp.reg1 matches 1 run function plane-data:n1k2/n1k2-storage
execute if score #is-different-data vp.reg1 matches 1 run function plane-data:ki-49/ki49-storage
execute if score #is-different-data vp.reg1 matches 1 run function plane-data:swordfish/swordfish-storage
execute if score #is-different-data vp.reg1 matches 1 run say "storage data renewed"

