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

#榴弾砲の向き設定
execute as @e[tag=howitzer152] at @s run tp @s ~ ~ ~ 160 -17
