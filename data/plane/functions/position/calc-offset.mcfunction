#> plane:position/calc-offset
#
# オフセット位置を計算
# ^vp.displacementX ^vp.displacementY ^vp.displacementZを計算
# (displacementX,displacementY,displacementZ) = offsetX*unit_vecttorX + offsetY*unit_vecttorY + offsetZ*unit_vecttorZ
#
# @input
#   executer @e[tag=has-offset,tag=target-parts]
#   position @e[tag=has-offset,tag=target-parts] rotated ~-90 ~
#   score @s vp.new-offsetX
#   score @s vp.new-offsetY
#   score @s vp.offsetZ
#
# @output
#   score @s vp.displacementX
#   score @s vp.displacementY
#   score @s vp.displacementZ
#
# @public

#> private
# @private
    #declare score_holder #x-direction-dx #x軸方向の単位ベクトルx
    #declare score_holder #x-direction-dy #x軸方向の単位ベクトルy
    #declare score_holder #x-direction-dz #x軸方向の単位ベクトルz
    #declare score_holder #y-direction-dx #y軸方向の単位ベクトルx
    #declare score_holder #y-direction-dy #y軸方向の単位ベクトルy
    #declare score_holder #y-direction-dz #y軸方向の単位ベクトルz
    #declare score_holder #z-direction-dx #z軸方向の単位ベクトルx
    #declare score_holder #z-direction-dy #z軸方向の単位ベクトルy
    #declare score_holder #z-direction-dz #z軸方向の単位ベクトルz


#座標取得エンティティtp
execute positioned 0.0 0.0 0.0 positioned ^1 ^ ^ run tp 0-0-0-0-6 ~ ~ ~
execute positioned 0.0 0.0 0.0 positioned ^ ^1 ^ run tp 0-0-0-0-2 ~ ~ ~
execute positioned 0.0 0.0 0.0 positioned ^ ^ ^1 run tp 0-0-0-0-3 ~ ~ ~
#tellraw @p [{"nbt":"Pos[0]","entity":"0-0-0-0-6"},{"nbt":"Pos[1]","entity":"0-0-0-0-6"},{"nbt":"Pos[2]","entity":"0-0-0-0-6"}] 
#tellraw @p [{"nbt":"Pos[0]","entity":"0-0-0-0-2"},{"nbt":"Pos[1]","entity":"0-0-0-0-2"},{"nbt":"Pos[2]","entity":"0-0-0-0-2"}] 
#tellraw @p [{"nbt":"Pos[0]","entity":"0-0-0-0-3"},{"nbt":"Pos[1]","entity":"0-0-0-0-3"},{"nbt":"Pos[2]","entity":"0-0-0-0-3"}] 

#座標計算
#X方向のベクトル算出
data modify storage minecraft:plane-datapack temporary.Pos set from entity 0-0-0-0-6 Pos
execute store result score #x-direction-dx vp.reg1 run data get storage minecraft:plane-datapack temporary.Pos[0] 1000
execute store result score #x-direction-dy vp.reg1 run data get storage minecraft:plane-datapack temporary.Pos[1] 1000
execute store result score #x-direction-dz vp.reg1 run data get storage minecraft:plane-datapack temporary.Pos[2] 1000
scoreboard players operation #x-direction-dx vp.reg1 *= @s vp.new-offsetX
scoreboard players operation #x-direction-dy vp.reg1 *= @s vp.new-offsetX
scoreboard players operation #x-direction-dz vp.reg1 *= @s vp.new-offsetX

#Y方向のベクトル算出
data modify storage minecraft:plane-datapack temporary.Pos set from entity 0-0-0-0-2 Pos
execute store result score #y-direction-dx vp.reg1 run data get storage minecraft:plane-datapack temporary.Pos[0] 1000
execute store result score #y-direction-dy vp.reg1 run data get storage minecraft:plane-datapack temporary.Pos[1] 1000
execute store result score #y-direction-dz vp.reg1 run data get storage minecraft:plane-datapack temporary.Pos[2] 1000
scoreboard players operation #y-direction-dx vp.reg1 *= @s vp.new-offsetY
scoreboard players operation #y-direction-dy vp.reg1 *= @s vp.new-offsetY
scoreboard players operation #y-direction-dz vp.reg1 *= @s vp.new-offsetY

#Z方向の単位ベクトル計算
data modify storage minecraft:plane-datapack temporary.Pos set from entity 0-0-0-0-3 Pos
execute store result score #z-direction-dx vp.reg1 run data get storage minecraft:plane-datapack temporary.Pos[0] 1000
execute store result score #z-direction-dy vp.reg1 run data get storage minecraft:plane-datapack temporary.Pos[1] 1000
execute store result score #z-direction-dz vp.reg1 run data get storage minecraft:plane-datapack temporary.Pos[2] 1000
scoreboard players operation #z-direction-dx vp.reg1 *= @s vp.offsetZ
scoreboard players operation #z-direction-dy vp.reg1 *= @s vp.offsetZ
scoreboard players operation #z-direction-dz vp.reg1 *= @s vp.offsetZ

#桁落とし
scoreboard players operation #x-direction-dx vp.reg1 /= #1000 vp.Num
scoreboard players operation #x-direction-dy vp.reg1 /= #1000 vp.Num
scoreboard players operation #x-direction-dz vp.reg1 /= #1000 vp.Num
scoreboard players operation #y-direction-dx vp.reg1 /= #1000 vp.Num
scoreboard players operation #y-direction-dy vp.reg1 /= #1000 vp.Num
scoreboard players operation #y-direction-dz vp.reg1 /= #1000 vp.Num
scoreboard players operation #z-direction-dx vp.reg1 /= #1000 vp.Num
scoreboard players operation #z-direction-dy vp.reg1 /= #1000 vp.Num
scoreboard players operation #z-direction-dz vp.reg1 /= #1000 vp.Num

#displacement算出
scoreboard players operation @s vp.displacementX = #x-direction-dx vp.reg1
scoreboard players operation @s vp.displacementX += #y-direction-dx vp.reg1
scoreboard players operation @s vp.displacementX += #z-direction-dx vp.reg1
scoreboard players operation @s vp.displacementY = #x-direction-dy vp.reg1
scoreboard players operation @s vp.displacementY += #y-direction-dy vp.reg1
scoreboard players operation @s vp.displacementY += #z-direction-dy vp.reg1
scoreboard players operation @s vp.displacementZ = #x-direction-dz vp.reg1
scoreboard players operation @s vp.displacementZ += #y-direction-dz vp.reg1
scoreboard players operation @s vp.displacementZ += #z-direction-dz vp.reg1

#底面をベースにするタグがついてた場合、底面が腕の高さに来るように補正
execute if entity @s[tag=offset-base] run scoreboard players add @s vp.displacementY 1500
