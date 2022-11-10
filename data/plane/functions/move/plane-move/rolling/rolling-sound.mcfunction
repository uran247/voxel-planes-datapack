#> plane:move/plane-move/rolling/rolling-sound
#
# @input
#   as @e[tag=plane-root]
#   at @s
#
# @within function plane:move/plane-move/rolling

scoreboard players set @s[scores={vp.sound=10..}] vp.sound 0

execute if entity @s[scores={vp.sound=1,vp.speed=1..}] at @s if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].plane-data.flight-model.engine{type:recipro} run playsound minecraft:plane.engine.recipro-rolling ambient @a[distance=..128] ~ ~ ~ 2 1 0.4
execute if entity @s[scores={vp.sound=1,vp.speed=1..}] at @s if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].plane-data.flight-model.engine{type:jet} run playsound minecraft:plane.engine.jet-rolling ambient @a[distance=..128] ~ ~ ~ 2 1 0.4

scoreboard players add @s vp.sound 1
