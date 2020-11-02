summon minecraft:shulker ~ ~ ~ {NoAI:1b,Tags:[howitzer,howitzer-tutorial,howitzer-tutorial-init,has-weapon1]}

scoreboard players set @e[tag=howitzer-tutorial-init] ammunition1 0
scoreboard players set @e[tag=howitzer-tutorial-init] w1-reload 0
scoreboard players set @e[tag=howitzer-tutorial-init] plane-id -1

tag @e[tag=howitzer-tutorial-init] remove howitzer-tutorial-init
