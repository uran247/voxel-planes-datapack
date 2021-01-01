#> plane:controll/controll-ground
#
# 近くの飛行機をアイテム化
# has-riderがついてる航空機は対象外
#
# @input
#   executer @p
#   position @p
#
# @within
#   plane:tick
#

#アイテム化
execute as @e[tag=plane-root,tag=!has-rider,distance=..10,sort=nearest,limit=1] at @s run function item:plane2item/plane2item

#スコアリセット
scoreboard players reset @s vp.rightClick