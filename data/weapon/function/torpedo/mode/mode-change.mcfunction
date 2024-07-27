#> weapon:torpedo/mode/mode-change
#
# 魚雷を航行モードに変更
#
# @input
#   executer @e[tag=torpedo]
#
# @within weapon:torpedo/torpedo-manager
    #declare tag sailing #魚雷が航行モードであることを示す

#タグ付け
tag @s add sailing

#ダメージ設定
scoreboard players operation @s vp.damage = @s vp.torp-damage

#向き修正
    #tellraw @p [{"nbt":"Rotation","entity": "@s"}]
data modify entity @s Rotation set from storage minecraft:plane-datapack temporary.Rotation
tp @s ~ ~ ~ ~ 0
#data modify entity @s Rotation set from storage minecraft:plane-datapack temporary.Rotation
    #tellraw @p [{"nbt":"Rotation","entity": "@s"}]

#x,y,z方向の速度スコア化
execute at @s run function math:vector
scoreboard players operation @s vp.speedX *= @s vp.speed
scoreboard players operation @s vp.speedY *= @s vp.speed
scoreboard players operation @s vp.speedZ *= @s vp.speed
scoreboard players operation @s vp.speedX /= #10 vp.Num
scoreboard players operation @s vp.speedY /= #10 vp.Num
scoreboard players operation @s vp.speedZ /= #10 vp.Num
    #tellraw @p [{"score" : {"name":"@s", "objective":"vp.speedX"}}," ",{"score" : {"name":"@s", "objective":"vp.speedY"}}," ",{"score" : {"name":"@s", "objective":"vp.speedZ"}}]
