summon minecraft:shulker ~ ~ ~ {NoAI:1b,Tags:[anti-air-gun,aa,aa88,aa88-init]}

scoreboard players set @e[tag=aa88-init] ammunition1 1000
scoreboard players set @e[tag=aa88-init] fire-power 40
scoreboard players set @e[tag=aa88-init] gun-speed 100
scoreboard players set @e[tag=aa88-init] accuracy 5
scoreboard players set @e[tag=aa88-init] max-w1-reload 100
scoreboard players set @e[tag=aa88-init] w1-reload 0
scoreboard players set @e[tag=aa88-init] fuse-height 24000
scoreboard players set @e[tag=aa88-init] plane-id -1

tag @e[tag=aa88-init] remove aa88-init

