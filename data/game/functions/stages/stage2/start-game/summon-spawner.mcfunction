#対空砲召喚&定位置へ移動
function mob:summon/aa88
execute as @e[tag=aa88,limit=1,sort=nearest] run tp @s -2400 84 -1599
function mob:summon/aa88
execute as @e[tag=aa88,limit=1,sort=nearest] run tp @s -2375 40 -1641
function mob:summon/aa88
execute as @e[tag=aa88,limit=1,sort=nearest] run tp @s -2372 39 -1654
function mob:summon/aa88
execute as @e[tag=aa88,limit=1,sort=nearest] run tp @s -2366 39 -1666
function mob:summon/aa88
execute as @e[tag=aa88,limit=1,sort=nearest] run tp @s -2355 39 -1686
function mob:summon/aa88
execute as @e[tag=aa88,limit=1,sort=nearest] run tp @s -2344 40 -1694

#targetタグ付与
execute as @e[tag=aa88] run tag @s add enemy-target

#game-idを付与
execute as @e[tag=aa88,tag=!has-gameid] store result score @s game-id run scoreboard players get #global game-id
execute as @e[tag=aa88,tag=!has-gameid] run tag @s add has-gameid

