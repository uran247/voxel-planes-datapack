#phantom1を10匹召喚
execute positioned 0 1 0 run function mob:summon/phantom1
execute positioned 0 1 0 run function mob:summon/phantom1
execute positioned 0 1 0 run function mob:summon/phantom1

#game-idを付与
execute positioned 0 1 0 as @e[tag=phantom1,distance=..10,tag=!has-gameid] store result score @s game-id run scoreboard players get #global game-id
execute positioned 0 1 0 as @e[tag=phantom1,distance=..10,tag=!has-gameid] run tag @s add has-gameid

#UUIDから乱数生成(0-150)
execute positioned 0 1 0 as @e[tag=phantom1,distance=..10] store result score @s reg1 run data get entity @s UUIDMost 0.0000000003
execute positioned 0 1 0 run scoreboard players operation @e[tag=phantom1,distance=..10,scores={reg=..-1}] reg1 *= #-1 Num
execute positioned 0 1 0 run scoreboard players operation @e[tag=phantom1,distance=..10] reg1 %= #150 Num

#拡散
execute positioned 0 1 0 run spreadplayers -1888 -2112 0 160 false @e[tag=phantom1,distance=..10]

#高さ調整(y=乱数+105)
execute as @e[tag=phantom1] store result entity @s Pos[1] double 1 run scoreboard players add @s reg1 105
