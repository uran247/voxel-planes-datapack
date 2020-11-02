function plane-data:re2005/re2005
tag @e[tag=re2005-root] add no-move
tag @e[tag=re2005-seat] add no-particle
tag @e[tag=re2005-root,tag=!satsuei] add satsuei1
tag @e[tag=re2005-root,tag=!satsuei] add satsuei
execute as @e[tag=re2005-root] run data merge entity @s {NoGravity:1b}
scoreboard players set @e[tag=re2005-root] speed 1000
