#> weapon:torpedo/check-block-torpedo
#
# エンティティの視線上にブロックがいるかを調べる
# usage: execute as 視線主entity at 視線終端点entity run this
#
# @input
#   executer @e
#       視線終端点entity
#   position at @e
#       視線主エンティティ
#
# @output
#   storage voxel-planes:return return #ブロックが見つかった地点の座標
#   score #x vp.return
#   score #y vp.return
#   score #z vp.return
#
# @public
#

#execute in overworld run tp 0-0-0-0-7 0.5 2 0.5
#execute in overworld run tp 0-0-0-0-8 0.5 2 0.5
tp 0-0-0-0-9 0.0 1.0 0.0
#
#execute facing entity @s eyes positioned as 0-0-0-0-7 in overworld run tp 0-0-0-0-7 ~ ~ ~ ~ ~
#execute as 0-0-0-0-7 at @s facing ^ ^ ^-1 in overworld run tp 0-0-0-0-8 ~ ~0.01 ~ ~ ~
#
#execute if entity @s[distance=0..] rotated as 0-0-0-0-7 positioned ^ ^ ^25.6 rotated as @e[distance=..0.1,x=0.5,y=2.0,z=0.5,sort=furthest,limit=2] positioned ^ ^ ^12.8 if entity @s[distance=..25.6] rotated as 0-0-0-0-7 positioned ^ ^ ^12.8 rotated as @e[distance=..0.1,x=0.5,y=2.0,z=0.5,sort=furthest,limit=2] positioned ^ ^ ^06.4 if entity @s[distance=..25.6] rotated as 0-0-0-0-7 positioned ^ ^ ^06.4 rotated as @e[distance=..0.1,x=0.5,y=2.0,z=0.5,sort=furthest,limit=2] positioned ^ ^ ^03.2 if entity @s[distance=..25.6] rotated as 0-0-0-0-7 positioned ^ ^ ^03.2 rotated as @e[distance=..0.1,x=0.5,y=2.0,z=0.5,sort=furthest,limit=2] positioned ^ ^ ^01.6 if entity @s[distance=..25.6] rotated as 0-0-0-0-7 positioned ^ ^ ^01.6 rotated as @e[distance=..0.1,x=0.5,y=2.0,z=0.5,sort=furthest,limit=2] positioned ^ ^ ^00.8 if entity @s[distance=..25.6] rotated as 0-0-0-0-7 positioned ^ ^ ^00.8 rotated as @e[distance=..0.1,x=0.5,y=2.0,z=0.5,sort=furthest,limit=2] positioned ^ ^ ^00.4 if entity @s[distance=..25.6] rotated as 0-0-0-0-7 positioned ^ ^ ^00.4 rotated as @e[distance=..0.1,x=0.5,y=2.0,z=0.5,sort=furthest,limit=2] positioned ^ ^ ^00.2 if entity @s[distance=..25.6] rotated as 0-0-0-0-7 positioned ^ ^ ^00.2 rotated as 0-0-0-0-7 positioned ^ ^ ^-25.6 unless block ~ ~ ~ minecraft:air run tp 0-0-0-0-9 ~ ~ ~
#data modify storage minecraft:plane-datapack temporary.Pos set from entity 0-0-0-0-9 Pos

execute facing entity @s eyes positioned ^ ^ ^25.6 run function weapon:torpedo/check-block-torpedo/step1
    #execute at 0-0-0-0-9 run particle happy_villager ~ ~ ~ 0 0 0 0 1 force

data remove storage voxel-planes:return return
data modify storage voxel-planes:return return set from entity 0-0-0-0-9 Pos
execute store result score #x vp.return run data get storage voxel-planes:return return[0] 100
execute store result score #y vp.return run data get storage voxel-planes:return return[1] 100
execute store result score #z vp.return run data get storage voxel-planes:return return[2] 100
#tellraw @p [{"nbt":"Pos","entity":"0-0-0-0-9"}] 

tp 0-0-0-0-9 0.0 1.0 0.0
