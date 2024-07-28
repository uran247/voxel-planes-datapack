#summon slime ~ ~ ~ {Size:5,NoAI:1b,Silent:1b,DeathLootTable:"minecraft:entities/bat",Tags:[test],Health:50f,Attributes:[{id:"generic.max_health",Base:50}]}

#execute as @e[type=slime] run data modify entity @s Health set value 0
execute as @e[type=slime] at @s run tp @e[type=slime] ~ -100 ~
kill @e[type=slime]
execute as @e[type=slime] at @s run tp @e[type=slime] ~ 5 ~
