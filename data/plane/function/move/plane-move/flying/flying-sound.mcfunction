#> plane:move/plane-move/flying/flying-sound
#
# @input
#   as @e[tag=plane-root]
#   at @s
#
# @within function plane:move/plane-move/flying

scoreboard players set @s[scores={vp.sound=20..}] vp.sound 0

execute if entity @s[scores={vp.sound=1,vp.speed=-1..}] at @s if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].plane-data.flight-model.engine{type:recipro} run playsound minecraft:plane.engine.recipro-flying ambient @a[distance=..128] ~ ~ ~ 2 1 0.4
execute if entity @s[scores={vp.sound=1,vp.speed=-1..}] at @s if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].plane-data.flight-model.engine{type:recipro} run playsound minecraft:plane.engine.recipro-flying ambient @a[distance=128..256] ~ ~ ~ 0.2 1 0.2

execute if entity @s[scores={vp.sound=1,vp.speed=-1..}] at @s if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].plane-data.flight-model.engine{type:jet} run playsound minecraft:plane.engine.jet-flying ambient @a[distance=..128] ~ ~ ~ 2 1 0.4
execute if entity @s[scores={vp.sound=1,vp.speed=-1..}] at @s if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].plane-data.flight-model.engine{type:jet} run playsound minecraft:plane.engine.jet-flying ambient @a[distance=128..256] ~ ~ ~ 0.2 1 0.2
execute if entity @s[tag=use-wep,scores={vp.sound=1,vp.speed=-1..}] at @s if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].plane-data.flight-model.engine{type:jet} run playsound minecraft:plane.engine.jet-flying ambient @a[distance=..128] ~ ~ ~ 2 0.66 0.4

scoreboard players add @s vp.sound 1
  #tellraw @p [{"score":{"name":"@s","objective":"vp.reg1"}}]
