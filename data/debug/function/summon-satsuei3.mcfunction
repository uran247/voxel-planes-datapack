#> debug:summon-satsuei3

function plane-data:b7a/b7a
tag @e[tag=plane-root] add no-move
tag @e[tag=plane-seat] add no-particle
tag @e[tag=plane-root,tag=!satsuei] add satsuei3
tag @e[tag=plane-root,tag=!satsuei] add satsuei
scoreboard players set @e[tag=plane-root,tag=satsuei3] vp.AngX 0
scoreboard players set @e[tag=plane-root,tag=satsuei3] vp.AngY 9000
execute as @e[tag=plane-root] run data merge entity @s {NoGravity:1b}

#execute as @e[tag=plane-root] at @s run tp @p ~ ~90 ~ 0 90
#execute as @e[tag=plane-root] at @s run scoreboard players set @s vp.AngY 0
execute as @e[tag=plane-root] at @s run function debug:set-flying
#execute as @e[tag=plane-root] at @s run scoreboard players set @s vp.AngZ 18000