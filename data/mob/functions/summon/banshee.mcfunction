#召喚
summon phantom ~ ~ ~ {Health:100f,Attributes:[{Name:generic.maxHealth,Base:100d}],Glowing:0b,CustomName:"{\"text\":\"バンシー\"}",Tags:[banshee,no-burn,banshee-init,enemy-plane,enemy,has-size,size30,dog-fight],Size:35,PersistenceRequired:1b,Passengers:[{id:"minecraft:skeleton",PersistenceRequired:1b,Glowing:0,Tags:[enemy-rider,banshee-rider,banshee-init,enemy],ArmorItems:[{},{},{},{id:"minecraft:diamond_helmet",Count:1b}]}]}

#パラメータ代入
scoreboard players set @e[tag=banshee-init] AngX 0
scoreboard players set @e[tag=banshee-init] AngY 0
scoreboard players set @e[tag=banshee-init] speed 11000
scoreboard players set @e[tag=banshee-init] pitch-speed 140
scoreboard players set @e[tag=banshee-init] yaw-speed 140
scoreboard players set @e[tag=banshee-init] plane-id -1
scoreboard players set @e[tag=banshee-init] max-forget-time 100
scoreboard players set @e[tag=banshee-init] min-forget-time 20
scoreboard players set @e[tag=banshee-init] sight-range 100
scoreboard players set @e[tag=banshee-init] default-pos-y 250
scoreboard players set @e[tag=banshee-init] fire-angle 15
scoreboard players set @e[tag=banshee-init,tag=banshee] ammunition1 600
scoreboard players set @e[tag=banshee-init,tag=banshee] w1-reload 0
scoreboard players operation @e[tag=banshee-init,tag=banshee] game-id = #global game-id

#初期化タグ除去
tag @e[tag=banshee-init] remove banshee-init

