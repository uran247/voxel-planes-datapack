function plane:summon/ki-49
tag @e[tag=ki49-root] add no-move
tag @e[tag=ki49-seat] add no-particle
tag @e[tag=ki49-root,tag=!satsuei] add satsuei2
tag @e[tag=ki49-root,tag=!satsuei] add satsuei
execute as @e[tag=ki49-root] run data merge entity @s {NoGravity:1b}
scoreboard players set @e[tag=ki49-root] speed 1000
