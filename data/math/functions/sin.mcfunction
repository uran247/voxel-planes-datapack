#実行者のinput1スコアに入っている数値(-180-180)からsinを計算して実行者のsinに代入
#summon minecraft:armor_stand -0.5 0 -0.5 {Markar:1,Tags:[Trigonometric1,Trigonometric],NoGravity:1}
#data merge entity @e[tag=Trigonometric1,limit=1] {Pos:[0d,0d,0d]}
#execute store result entity @e[tag=Trigonometric1,limit=1] Rotation[0] float 1 run scoreboard players get @s input1
#execute at @e[tag=Trigonometric,limit=1] run summon minecraft:armor_stand ^ ^ ^5 {Markar:1,Tags:[Trigonometric2,Trigonometric],NoGravity:1}
#execute store result score @s sin run data get entity @e[tag=Trigonometric2,limit=1] Pos[0] -200
#kill @e[tag=Trigonometric]

#execute store result entity 0-0-20-0-0 Rotation[0] float 0.01 run scoreboard players get @s input1
#execute at 0-0-20-0-0 positioned ^ ^ ^5 run tp 0-0-21-0-0 ~ ~ ~
#execute store result score @s sin run data get entity 0-0-21-0-0 Pos[0] -200


execute store result entity 0-0-20-0-0 Rotation[0] float 0.01 run scoreboard players get @s input1
execute rotated as 0-0-20-0-0 positioned 0.0 0.0 0.0 positioned ^ ^ ^5 run tp 0-0-20-0-0 ~ ~ ~
execute store result score @s sin run data get entity 0-0-20-0-0 Pos[0] -200
