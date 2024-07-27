#> debug:turn-propotional
#
# execute as @e[tag=ms] at @s run function debug:turn-propotional
#
#

function oh_my_dat:please
    #execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].data.los-old run say fail

execute at @s facing entity @e[tag=tg,sort=nearest,limit=1] feet positioned as 0-0-0-0-1 run tp 0-0-0-0-1 0.0 0.0 0.0 ~ ~
data modify storage minecraft:plane-datapack temporary.los-current set from entity 0-0-0-0-1 Rotation

execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].data.los-old run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].data.los-old set from storage minecraft:plane-datapack temporary.los-current
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].data.los-old run return fail

execute store result score #los-x-current vp.reg1 run data get storage plane-datapack temporary.los-current[0] 100
    tellraw @p [{"score":{"objective": "vp.reg1","name": "#los-x-current"}}]
execute store result score #los-x-old vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].data.los-old[0] 100
execute store result score #los-x-delta vp.reg1 run scoreboard players operation #los-x-current vp.reg1 -= #los-x-old vp.reg1
    tellraw @p [{"score":{"objective": "vp.reg1","name": "#los-x-old"}}]
    tellraw @p [{"score":{"objective": "vp.reg1","name": "#los-x-delta"}}]

execute store result score #los-y-current vp.reg1 run data get storage plane-datapack temporary.los-current[1] 100
    #tellraw @p [{"score":{"objective": "vp.reg1","name": "#los-y-current"}}]
execute store result score #los-y-old vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].data.los-old[1] 100
execute store result score #los-y-delta vp.reg1 run scoreboard players operation #los-y-current vp.reg1 -= #los-y-old vp.reg1
    #tellraw @p [{"score":{"objective": "vp.reg1","name": "#los-y-old"}}]
    #tellraw @p [{"score":{"objective": "vp.reg1","name": "#los-y-delta"}}]

data remove storage voxel-planes:input input
execute store result storage voxel-planes:input input.x double 0.03 run scoreboard players get #los-x-delta vp.reg1
execute store result storage voxel-planes:input input.y double 0.03 run scoreboard players get #los-y-delta vp.reg1
    tellraw @p [{"nbt":"input","storage": "voxel-planes:input"}]

function util:scoreturn with storage voxel-planes:input input
execute at @s run tp @s ^ ^ ^0.5

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].data.los-old set from storage minecraft:plane-datapack temporary.los-current
