#対空砲召喚&定位置へ移動
execute positioned 4927 57 -5439 run function mob:summon/howitzer152
execute positioned 4919 57 -5439 run function mob:summon/howitzer152
execute positioned 4910 56 -5445 run function mob:summon/howitzer152
execute positioned 4900 56 -5446 run function mob:summon/howitzer152
execute positioned 4874 51 -5411 run function mob:summon/howitzer152
execute positioned 4866 50 -5411 run function mob:summon/howitzer152
execute positioned 4854 50 -5411 run function mob:summon/howitzer152
execute positioned 4844 50 -5411 run function mob:summon/howitzer152
execute positioned 4819 49 -5398 run function mob:summon/howitzer152
execute positioned 4810 49 -5398 run function mob:summon/howitzer152
execute positioned 4800 49 -5389 run function mob:summon/howitzer152
execute positioned 4792 49 -5389 run function mob:summon/howitzer152

execute positioned 4831 51 -5390 run function mob:summon/aa88
execute positioned 4888 51 -5395 run function mob:summon/aa88

#execute positioned 4831 151 -5390 run function mob:summon/banshee
#execute positioned 4888 201 -5395 run function mob:summon/banshee

#榴弾砲の向き設定
execute as @e[tag=howitzer152] at @s run tp @s ~ ~ ~ facing 4600 46 -6130
execute as @e[tag=howitzer152] at @s run tp @s ~ ~ ~ ~ -17

#基地召喚
summon minecraft:armor_stand 4600 46 -6130 {Invisible:1b,Tags:[friend-target,base,entity-nohit],HandItems:[{id:"minecraft:snowball",Count:1b,tag:{BaseHP:10000}},{}]}
say @e[tag=friend-target]

#targetタグ付与
execute as @e[tag=howitzer152] run tag @s add enemy-target

#game-idを付与
execute as @e[tag=aa88,tag=!has-gameid] store result score @s game-id run scoreboard players get #global game-id
execute as @e[tag=howitzer152,tag=!has-gameid] store result score @s game-id run scoreboard players get #global game-id
execute as @e[tag=banshee,tag=!has-gameid] store result score @s game-id run scoreboard players get #global game-id
execute as @e[tag=friend-target,tag=!has-gameid] store result score @s game-id run scoreboard players get #global game-id
tag @e[tag=aa88,tag=!has-gameid] add has-gameid
tag @e[tag=howitzer152,tag=!has-gameid] add has-gameid
tag @e[tag=banshee,tag=!has-gameid] add has-gameid
tag @e[tag=friend-target,tag=!has-gameid] add has-gameid
