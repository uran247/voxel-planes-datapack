#> plane:position/util/get-corret-param
#
# rootにparam-corスコアの合計値を入れる
#
# @input
#   executer @e[tag=plane-root]
#   position @e[tag=plane-root]
#
# @within plane:position/position
#

scoreboard players set @s vp.add-weight 0
scoreboard players operation @s vp.add-weight += @e[tag=target-parts,distance=..30] vp.weight
