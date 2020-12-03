#パーツを移動
#入力：entity　@e[plane-parts] score: @s displacementX,Y,Z

#座標取得
data modify storage minecraft:plane-datapack temporary.Pos set from entity @s Pos
execute store result score #current-x vp.reg1 run data get storage minecraft:plane-datapack temporary.Pos[0] 1000
execute store result score #current-y vp.reg1 run data get storage minecraft:plane-datapack temporary.Pos[1] 1000
execute store result score #current-z vp.reg1 run data get storage minecraft:plane-datapack temporary.Pos[2] 1000
scoreboard players operation #current-x vp.reg1 += @s vp.displacementX
scoreboard players operation #current-y vp.reg1 += @s vp.displacementY
scoreboard players operation #current-z vp.reg1 += @s vp.displacementZ

#移動
execute store result storage plane-datapack temporary.Pos[0] double 0.001 run scoreboard players get #current-x vp.reg1
execute store result storage plane-datapack temporary.Pos[1] double 0.001 run scoreboard players get #current-y vp.reg1
execute store result storage plane-datapack temporary.Pos[2] double 0.001 run scoreboard players get #current-z vp.reg1
data modify entity @s Pos set from storage minecraft:plane-datapack temporary.Pos
