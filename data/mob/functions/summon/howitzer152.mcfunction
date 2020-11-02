summon minecraft:shulker ~ ~ ~ {NoAI:1b,Tags:[howitzer,howitzer152,howitzer152-init,has-weapon1]}

scoreboard players set @e[tag=howitzer152-init] ammunition1 1000
scoreboard players set @e[tag=howitzer152-init] w1-reload 0
scoreboard players set @e[tag=howitzer152-init] plane-id -1

tag @e[tag=howitzer152-init] remove howitzer152-init
