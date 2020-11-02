#基地召喚&定位置へ移動
summon minecraft:armor_stand 0 0 0 {Invisible:1b,Tags:[enemy-target,enemy-base,base,entity-nohit],HandItems:[{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1,BaseHP:10000}},{}]}

#game-idを付与
execute as @e[tag=enemy-base,x=0,y=0,z=0,tag=!has-gameid] store result score @s game-id run scoreboard players get #global game-id
execute as @e[tag=enemy-base,x=0,y=0,z=0,tag=!has-gameid] run tag @s add has-gameid

#設置場所へ移動
tp @e[tag=enemy-base,x=0,y=0,z=0] -1877 97 -2084
