function plane:summon/a6m2
tag @e[tag=a6m2-root] add no-move
tag @e[tag=a6m2-seat] add no-particle
#tag @e[tag=a6m2-root] add flying
execute as @e[tag=a6m2-root] run data merge entity @s {NoGravity:1b}
scoreboard players set @e[tag=a6m2-root] vp.speed 1000
