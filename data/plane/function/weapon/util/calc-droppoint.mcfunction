#> plane:weapon/util/calc-droppoint
#
#
#
# @within function plane:weapon/util/display-aim/**

data modify storage minecraft:plane-datapack temporary.Pos set from storage voxel-planes:input input
execute store result score #pos-x vp.reg1 run data get storage minecraft:plane-datapack temporary.Pos[0] 100
execute store result score #pos-z vp.reg1 run data get storage minecraft:plane-datapack temporary.Pos[2] 100
    #tellraw @p [{"score":{"name": "#pos-x","objective": "vp.reg1"}}," ",{"score":{"name": "#pos-z","objective": "vp.reg1"}}]
    #tellraw @p [{"nbt":"temporary.Pos","storage": "minecraft:plane-datapack"}]

scoreboard players operation #speed-x vp.input *= #drop-time vp.return
scoreboard players operation #speed-z vp.input *= #drop-time vp.return

execute store result storage minecraft:plane-datapack temporary.Pos[0] double 0.01 run scoreboard players operation #pos-x vp.reg1 += #speed-x vp.input
execute store result storage minecraft:plane-datapack temporary.Pos[1] double 1 run scoreboard players get #ground-y vp.return
execute store result storage minecraft:plane-datapack temporary.Pos[2] double 0.01 run scoreboard players operation #pos-z vp.reg1 += #speed-z vp.input

data modify entity @s Pos set from storage minecraft:plane-datapack temporary.Pos