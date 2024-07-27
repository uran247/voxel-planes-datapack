#> debug:autorotate
#
# 
#
# @within  e:/minecraft/.minecraft/1.18/resourcepacks/objmc/assets/minecraft/models/item/plane/lancaster.json

execute store result score #r vp.reg1 run data get entity @s Pose.Head[0] 0.708333333
execute store result score #g vp.reg1 run data get entity @s Pose.Head[1] 0.708333333
execute store result score #b vp.reg1 run data get entity @s Pose.Head[2] 0.708333333

scoreboard players operation #r vp.reg1 %= #256 vp.Num
scoreboard players operation #g vp.reg1 %= #256 vp.Num
scoreboard players operation #b vp.reg1 %= #256 vp.Num

scoreboard players operation #rgb vp.reg1 = #r vp.reg1
scoreboard players operation #rgb vp.reg1 *= #256 vp.Num
scoreboard players operation #rgb vp.reg1 += #g vp.reg1
scoreboard players operation #rgb vp.reg1 *= #256 vp.Num
scoreboard players operation #rgb vp.reg1 += #b vp.reg1

execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get #rgb vp.reg1