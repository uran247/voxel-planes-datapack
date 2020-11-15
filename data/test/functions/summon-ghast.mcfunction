#plane:tickで実行
tag @s add summon-ghast-executer
scoreboard players set @s vp.reg1 0
execute as @e[type=minecraft:ghast,distance=..200] run scoreboard players add @a[tag=summon-ghast-executer] vp.reg1 1
execute as @s[scores={vp.reg1=..5}] run summon minecraft:ghast ^ ^5 ^90 {Silent:1b}
tag @s remove summon-ghast-executer
