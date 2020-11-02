#敵召喚&定位置へ移動
execute positioned 3732 280 -6055 run function mob:summon/big-phantom1

#targetタグ付与
execute as @e[tag=big-phantom1] run tag @s add enemy-target

#game-idを付与
execute as @e[tag=big-phantom1,tag=!has-gameid] store result score @s game-id run scoreboard players get #global game-id
tag @e[tag=big-phantom1,tag=!has-gameid] add has-gameid
