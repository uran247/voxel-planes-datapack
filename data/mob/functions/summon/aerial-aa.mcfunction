summon minecraft:shulker ~ ~ ~ {NoAI:1b,Tags:[anti-air-gun,aa,aerial-aa,aerial-aa-init]}

scoreboard players set @e[tag=aerial-aa-init] ammunition1 1000
scoreboard players set @e[tag=aerial-aa-init] fire-power 100
scoreboard players set @e[tag=aerial-aa-init] gun-speed 100
scoreboard players set @e[tag=aerial-aa-init] accuracy 5
scoreboard players set @e[tag=aerial-aa-init] max-w1-reload 100
scoreboard players set @e[tag=aerial-aa-init] w1-reload 0
scoreboard players set @e[tag=aerial-aa-init] fuse-height 40000
scoreboard players set @e[tag=aerial-aa-init] plane-id -1

tag @e[tag=aerial-aa-init] remove aerial-aa-init
