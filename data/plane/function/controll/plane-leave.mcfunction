#> plane:controll/plane-leave
# 
# プレイヤーのplaneid/keyinputスコア、riderタグリセット アイテム削除
#
# @input
#   executer @p
#
# @within plane:tick
#

scoreboard players reset @s vp.plane-id
scoreboard players set @s vp.key-input 0
clear @s minecraft:crossbow[minecraft:custom_data~{item-type:controll-rod}]
clear @s minecraft:tipped_arrow[minecraft:custom_data~{item-type:indicator}]
tag @s remove plane-rider
tag @s remove entity-nohit

