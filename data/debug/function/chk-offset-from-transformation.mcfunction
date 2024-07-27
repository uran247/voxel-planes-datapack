#> debug:chk-offset
#
# execute as @e[tag=plane-root] at @s run function debug:chk-offset
# 

execute store result score 00000000-0000-0000-0000-00000000000a vp.new-offsetX run data get entity @s transformation.translation[0] 1000
execute store result score 00000000-0000-0000-0000-00000000000a vp.new-offsetY run data get entity @s transformation.translation[1] 1000
execute store result score 00000000-0000-0000-0000-00000000000a vp.offsetZ run scoreboard players get @s vp.offsetZ
scoreboard players add 00000000-0000-0000-0000-00000000000a vp.new-offsetY 2000
    #execute as 0-0-0-0-a run tellraw @p [{"score" : {"name":"@s", "objective":"vp.new-offsetY"}}]
    #tellraw @p [{"nbt":"transformation.translation[1]","entity":"@s"}]

execute on vehicle at @s as 0-0-0-0-a run function plane:position/move-to-offset
    #tellraw @p [{"nbt":"transformation.translation","entity":"@s"}]

execute at 0-0-0-0-a run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~ ~ 0 0 0 1 0 force

tp 0-0-0-0-a 0 1 0

