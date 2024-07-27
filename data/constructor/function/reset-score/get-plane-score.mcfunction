execute as @e[tag=plane] unless score @s vp.plane-id matches 1.. store result score @s vp.plane-id run data get entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base 1
