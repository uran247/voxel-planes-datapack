#> plane:position/util/set-translation
#
# 装備item_displayにtranslationをセットする
#
# @input
#   executer @e[tag=plane-parts]
#   score @s vp.new-offsetX
#   score @s vp.new-offsetY
#   score @s vp.offsetZ
#
# @within function plane:position/position

# 初期化
data modify storage minecraft:plane-datapack temporary.translation set value [0f,0f,0f]

# 代入
execute store result storage minecraft:plane-datapack temporary.translation[0] float 0.001 run scoreboard players get @s vp.new-offsetX
execute store result storage minecraft:plane-datapack temporary.translation[1] float 0.001 run scoreboard players get @s vp.new-offsetY
execute store result storage minecraft:plane-datapack temporary.translation[2] float 0.001 run scoreboard players get @s vp.offsetZ

data modify entity @s transformation.translation set from storage minecraft:plane-datapack temporary.translation

    #tellraw @p [{"score" : {"name":"@s", "objective":"vp.new-offsetY"}}]
    #tellraw @p [{"score" : {"name":"@s", "objective":"vp.new-offsetX"}}]
    #tellraw @p [{"nbt":"transformation.translation","entity": "@s"}]

