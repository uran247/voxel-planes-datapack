#> debug:test-dummy-plane

execute as @e[tag=has-dummy-rider,tag=!flying] run scoreboard players set @s vp.throttle 20
execute as @e[tag=has-dummy-rider,tag=!destroyed] run scoreboard players set @s vp.throttle 20
execute as @e[tag=has-dummy-rider,tag=flying,tag=!destroyed] run scoreboard players set @s vp.yaw-gap -15000
execute as @e[tag=has-dummy-rider,tag=flying,tag=!destroyed] at @s if entity @s[y=150,dy=200] run scoreboard players set @s vp.AngX 0
execute as @e[tag=has-dummy-rider,tag=flying,tag=!destroyed] at @s if entity @s[y=149,dy=-200] run scoreboard players set @s vp.AngX -1200
