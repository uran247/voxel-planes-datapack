#召喚
summon phantom ~ ~ ~ {Health:60f,Attributes:[{Name:generic.maxHealth,Base:60d}],Glowing:0,CustomName:"{\"text\":\"ファントムI\"}",Tags:[phantom1,no-burn,phantom1-init,enemy-plane,enemy,has-size,size30,dog-fight],Size:30,PersistenceRequired:1b,Passengers:[{id:"minecraft:skeleton",PersistenceRequired:1b,Glowing:0,Tags:[phantom1-rider,phantom1-init,enemy,enemy-rider],ArmorItems:[{},{},{},{id:"minecraft:diamond_helmet",Count:1b}]}]}

#パラメータ代入
scoreboard players set @e[tag=phantom1-init] AngX 0
scoreboard players set @e[tag=phantom1-init] AngY 0
scoreboard players set @e[tag=phantom1-init] speed 9000
scoreboard players set @e[tag=phantom1-init] pitch-speed 120
scoreboard players set @e[tag=phantom1-init] yaw-speed 120
scoreboard players set @e[tag=phantom1-init] plane-id -1
scoreboard players set @e[tag=phantom1-init] max-forget-time 100
scoreboard players set @e[tag=phantom1-init] min-forget-time 20
scoreboard players set @e[tag=phantom1-init] sight-range 100
scoreboard players set @e[tag=phantom1-init] fire-angle 15
scoreboard players set @e[tag=phantom1-init] default-pos-y 200
scoreboard players set @e[tag=phantom1-init,tag=phantom1] ammunition1 600
scoreboard players set @e[tag=phantom1-init,tag=phantom1] w1-reload 0
scoreboard players operation @e[tag=phantom1-init,tag=phantom1] game-id = #global game-id

#初期化タグ除去
tag @e[tag=phantom1-init] remove phantom1-init

