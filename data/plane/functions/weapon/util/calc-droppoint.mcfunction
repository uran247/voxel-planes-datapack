#> plane:weapon/util/calc-droppoint
#
#
#
# @within function plane:weapon/util/display-aim

data modify storage minecraft:plane-datapack temporary.Pos set from entity 0-0-0-0-4 Pos
execute store result score #pos-x vp.reg1 run data get storage minecraft:plane-datapack temporary.Pos[0] 100
execute store result score #pos-z vp.reg1 run data get storage minecraft:plane-datapack temporary.Pos[2] 100

scoreboard players operation #speed-x vp.input *= #drop-time vp.return
scoreboard players operation #speed-z vp.input *= #drop-time vp.return

execute store result storage minecraft:plane-datapack temporary.Pos[0] double 0.01 run scoreboard players operation #pos-x vp.reg1 += #speed-x vp.input
execute store result storage minecraft:plane-datapack temporary.Pos[2] double 0.01 run scoreboard players operation #pos-z vp.reg1 += #speed-z vp.input

data modify entity 0-0-0-0-4 Pos set from storage minecraft:plane-datapack temporary.Pos