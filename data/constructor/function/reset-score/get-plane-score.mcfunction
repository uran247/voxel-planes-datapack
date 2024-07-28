execute as @e[tag=plane] unless score @s vp.plane-id matches 1.. store result score @s vp.plane-id run data get entity @s Attributes[{id:"minecraft:generic.movement_speed"}].base 1
