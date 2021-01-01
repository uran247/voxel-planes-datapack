#> weapon:util/check-entity
#
# エンティティの視線上にエンティティがいるかを調べる　最大半径25block
# 直線状にいるエンティティにタグ付け
#
# @input
#   executer @e
#       視線主エンティティ
#   entity 0-0-0-0-4
#       視線終端点entity
#
# @output
#   entity @e[tag=hit-on-line]
#       直線状にいるエンティティ
#
# @public

#> private
# @private
    #declare tag check-executer #実行者を示す

#実効者にタグ付け
tag @s add check-executer

#実効者-0-0-0-0-4の直線上にいるエンティティにタグ付け
tp 0-0-0-0-b @s

execute positioned ^ ^ ^12.5 as @e[tag=!check-executer,distance=..13] positioned as @s positioned ^ ^ ^1000 facing entity 0-0-0-0-b feet positioned ^ ^ ^1000 positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=1,dy=1,dz=1] run tag @s add hit-on-line

#実効者と目印にタグ削除
tag @s remove check-executer
#tag 0-0-0-0-4 remove check-executer
tp 0-0-0-0-b 0.5 2 0.5
#tag @e[tag=hit-candidate,distance=..30] remove hit-candidate

