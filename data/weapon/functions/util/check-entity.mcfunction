#> weapon:util/check-entity
#
# エンティティの視線上にエンティティがいるかを調べる　最大半径25block
# 直線状にいるエンティティにタグ付け
#
# @input
#   as @e[tag=block-checker,distance=..1,x=0,y=1,z=0,limit=1]
#       視線終端点entity
#   positioned @e
#       視線主エンティティ
#   facing @e[tag=block-checker,distance=..1,x=0,y=1,z=0,limit=1]
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

#実効者 @e[tag=block-checker,distance=..1,x=0,y=1,z=0,limit=1] の直線上にいるエンティティにタグ付け
tp 0-0-0-0-b ~ ~ ~
execute positioned ^ ^ ^10 as @e[tag=!check-executer,distance=..10] positioned as @s positioned ^ ^ ^1000 facing entity 0-0-0-0-b feet positioned ^ ^ ^1000 positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run tag @s add hit-on-line

# 視線終点entityより向こうにいるやつのタグを削除
execute positioned as @s as @e[tag=hit-on-line,distance=..20] positioned ^ ^ ^1000 if entity @s[distance=..1000] run tag @s remove hit-on-line

#実効者と目印にタグ削除
tag @s remove check-executer
tp 0-0-0-0-b 0.5 2 0.5
#tag @e[tag=hit-candidate,distance=..30] remove hit-candidate

