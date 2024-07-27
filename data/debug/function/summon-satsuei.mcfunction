#> debug:summon-satsuei

function plane-data:saab29f/saab29f
tag @e[tag=plane-root] add no-move
tag @e[tag=plane-seat] add no-particle
tag @e[tag=plane-root,tag=!satsuei] add satsuei1
tag @e[tag=plane-root,tag=!satsuei] add satsuei
scoreboard players set @e[tag=plane-root] vp.AngX 0
scoreboard players set @e[tag=plane-root] vp.AngY 1
execute as @e[tag=plane-root] run data merge entity @s {NoGravity:1b}

#execute as @e[tag=plane-root] at @s run tp @p ~ ~90 ~ 0 90
#execute as @e[tag=plane-root] at @s run scoreboard players set @s vp.AngY 0
#execute as @e[tag=plane-root] at @s run function debug:set-flying
#execute as @e[tag=plane-root] at @s run scoreboard players set @s vp.AngZ 18000