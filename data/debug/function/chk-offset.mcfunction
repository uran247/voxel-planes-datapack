#> debug:chk-offset
#
# execute as @e[tag=plane-root] at @s run function debug:chk-offset
# 

#data modify storage minecraft:plane-datapack debug.chkoffset set value [-2d,1.3d,4.7d]
execute as 0-0-0-0-a store result score @s vp.offsetX run data get storage minecraft:plane-datapack debug.chkoffset[0] 1000
execute as 0-0-0-0-a store result score @s vp.offsetY run data get storage minecraft:plane-datapack debug.chkoffset[1] 1000
execute as 0-0-0-0-a store result score @s vp.offsetZ run data get storage minecraft:plane-datapack debug.chkoffset[2] 1000
scoreboard players operation 0-0-0-0-a vp.input1 = @s vp.AngZ
tp 0-0-0-0-a ^ ^ ^ ~ ~

#execute as 0-0-0-0-a at @s rotated ~-90 ~ run function plane:position/calc-offset
execute at @s as 0-0-0-0-a run function plane:position/util/calc-displacement
execute at @s as 0-0-0-0-a run function plane:position/move-to-offset

execute at 0-0-0-0-a run particle dust{color:[1.000,0.000,0.000],scale:0.2} ~ ~ ~ 0 0 0 1 0 force

tp 0-0-0-0-a 0 1 0
execute as 0-0-0-0-a run tag @s remove offset-base

