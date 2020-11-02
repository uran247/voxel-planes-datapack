#plane:tickで実行
tag @s add summon-phantom-executer
scoreboard players set @s reg1 0
execute as @e[type=minecraft:phantom,distance=..200] run scoreboard players add @a[tag=summon-phantom-executer] reg1 1
execute as @s[scores={reg1=..5}] run summon minecraft:phantom ^ ^5 ^90 {Size:20,ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}]}
tag @s remove summon-phantom-executer
