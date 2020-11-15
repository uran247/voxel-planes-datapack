function plane:summon/a6m5
tag @e[tag=a6m5-root] add no-move
tag @e[tag=a6m5-seat] add no-particle
tag @e[tag=a6m5-root,tag=!satsuei] add satsuei5
tag @e[tag=a6m5-root,tag=!satsuei] add satsuei
execute as @e[tag=a6m5-root] run data merge entity @s {NoGravity:1b}
scoreboard players set @e[tag=a6m5-root] vp.speed 1000
