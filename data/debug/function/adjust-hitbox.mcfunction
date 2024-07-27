tag @e[tag=plane-hitbox] add plane-init

data modify storage minecraft:plane-datapack temporary.Pos set value [0d,0d,0d]
execute as @e[tag=body,tag=plane-init] store result score @s vp.offsetX run data get storage minecraft:plane-datapack temporary.Pos[0] 1000
execute as @e[tag=body,tag=plane-init] store result score @s vp.offsetY run data get storage minecraft:plane-datapack temporary.Pos[1] 1000
execute as @e[tag=body,tag=plane-init] store result score @s vp.offsetZ run data get storage minecraft:plane-datapack temporary.Pos[2] 1000

data modify storage minecraft:plane-datapack temporary.Pos set value [0d,0d,5d]
execute as @e[tag=engine,tag=plane-init] store result score @s vp.offsetX run data get storage minecraft:plane-datapack temporary.Pos[0] 1000
execute as @e[tag=engine,tag=plane-init] store result score @s vp.offsetY run data get storage minecraft:plane-datapack temporary.Pos[1] 1000
execute as @e[tag=engine,tag=plane-init] store result score @s vp.offsetZ run data get storage minecraft:plane-datapack temporary.Pos[2] 1000

data modify storage minecraft:plane-datapack temporary.Pos set value [-3d,-0.3d,2.7d]
execute as @e[tag=aileron-r,tag=plane-init] store result score @s vp.offsetX run data get storage minecraft:plane-datapack temporary.Pos[0] 1000
execute as @e[tag=aileron-r,tag=plane-init] store result score @s vp.offsetY run data get storage minecraft:plane-datapack temporary.Pos[1] 1000
execute as @e[tag=aileron-r,tag=plane-init] store result score @s vp.offsetZ run data get storage minecraft:plane-datapack temporary.Pos[2] 1000

data modify storage minecraft:plane-datapack temporary.Pos set value [3d,-0.3d,2.7d]
execute as @e[tag=aileron-l,tag=plane-init] store result score @s vp.offsetX run data get storage minecraft:plane-datapack temporary.Pos[0] 1000
execute as @e[tag=aileron-l,tag=plane-init] store result score @s vp.offsetY run data get storage minecraft:plane-datapack temporary.Pos[1] 1000
execute as @e[tag=aileron-l,tag=plane-init] store result score @s vp.offsetZ run data get storage minecraft:plane-datapack temporary.Pos[2] 1000

data modify storage minecraft:plane-datapack temporary.Pos set value [-1.2d,0.6d,-3d]
execute as @e[tag=elevator-r,tag=plane-init] store result score @s vp.offsetX run data get storage minecraft:plane-datapack temporary.Pos[0] 1000
execute as @e[tag=elevator-r,tag=plane-init] store result score @s vp.offsetY run data get storage minecraft:plane-datapack temporary.Pos[1] 1000
execute as @e[tag=elevator-r,tag=plane-init] store result score @s vp.offsetZ run data get storage minecraft:plane-datapack temporary.Pos[2] 1000

data modify storage minecraft:plane-datapack temporary.Pos set value [1.2d,0.6d,-3d]
execute as @e[tag=elevator-l,tag=plane-init] store result score @s vp.offsetX run data get storage minecraft:plane-datapack temporary.Pos[0] 1000
execute as @e[tag=elevator-l,tag=plane-init] store result score @s vp.offsetY run data get storage minecraft:plane-datapack temporary.Pos[1] 1000
execute as @e[tag=elevator-l,tag=plane-init] store result score @s vp.offsetZ run data get storage minecraft:plane-datapack temporary.Pos[2] 1000

data modify storage minecraft:plane-datapack temporary.Pos set value [0d,1.1d,-3.3d]
execute as @e[tag=radder,tag=plane-init] store result score @s vp.offsetX run data get storage minecraft:plane-datapack temporary.Pos[0] 1000
execute as @e[tag=radder,tag=plane-init] store result score @s vp.offsetY run data get storage minecraft:plane-datapack temporary.Pos[1] 1000
execute as @e[tag=radder,tag=plane-init] store result score @s vp.offsetZ run data get storage minecraft:plane-datapack temporary.Pos[2] 1000

data modify storage minecraft:plane-datapack temporary.Pos set value [0d,0.7d,3.4d]
execute as @e[tag=cockpit,tag=plane-init] store result score @s vp.offsetX run data get storage minecraft:plane-datapack temporary.Pos[0] 1000
execute as @e[tag=cockpit,tag=plane-init] store result score @s vp.offsetY run data get storage minecraft:plane-datapack temporary.Pos[1] 1000
execute as @e[tag=cockpit,tag=plane-init] store result score @s vp.offsetZ run data get storage minecraft:plane-datapack temporary.Pos[2] 1000

scoreboard players add @e[tag=plane-root] vp.AngY 1

tag @e[tag=plane-init] remove plane-init