loot give @s loot loot:planes/japan/ki-44
advancement revoke @s from advancements:battle/destroy-message-root
recipe take @s recipes:test1
clear @s phantom_spawn_egg 1
execute store success score @s reg1 run clear @s phantom_spawn_egg 0
execute if score @s reg1 matches 1.. run function advancements:take-recipies
