#召喚
summon phantom ~ ~ ~ {Health:1024f,Attributes:[{Name:generic.maxHealth,Base:1024d}],Glowing:0,CustomName:"{\"text\":\"ファントムI\"}",Tags:[big-phantom1,no-burn,big-phantom1-init,enemy-plane,enemy,has-size,size140,dog-fight,has-skill],Size:64,PersistenceRequired:1b,Passengers:[{id:"minecraft:skeleton",PersistenceRequired:1b,Glowing:0,Tags:[big-phantom1-rider,big-phantom1-init,enemy,enemy-rider],ArmorItems:[{},{},{},{id:"minecraft:diamond_helmet",Count:1b}]}]}

#パラメータ代入
scoreboard players set @e[tag=big-phantom1-init] AngX 0
scoreboard players set @e[tag=big-phantom1-init] AngY 0
scoreboard players set @e[tag=big-phantom1-init] speed 12150
scoreboard players set @e[tag=big-phantom1-init] pitch-speed 160
scoreboard players set @e[tag=big-phantom1-init] yaw-speed 160
scoreboard players set @e[tag=big-phantom1-init] plane-id -1
scoreboard players set @e[tag=big-phantom1-init] defence 2
scoreboard players set @e[tag=big-phantom1-init] max-forget-time 200
scoreboard players set @e[tag=big-phantom1-init] min-forget-time 200
scoreboard players set @e[tag=big-phantom1-init] sight-range 100
scoreboard players set @e[tag=big-phantom1-init] fire-angle 15
scoreboard players set @e[tag=big-phantom1-init] skill-ct 100
scoreboard players set @e[tag=big-phantom1-init] max-skill-ct 100
scoreboard players set @e[tag=big-phantom1-init] default-pos-y 300
scoreboard players set @e[tag=big-phantom1-init,tag=big-phantom1] ammunition1 600
scoreboard players set @e[tag=big-phantom1-init,tag=big-phantom1] w1-reload 0
scoreboard players operation @e[tag=big-phantom1-init,tag=big-phantom1] game-id = #global game-id

#初期化タグ除去
tag @e[tag=big-phantom1-init] remove big-phantom1-init

