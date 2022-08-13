#> weapon:util/check-entity-proximity
#
# エンティティの視線上にエンティティがいるかを調べる　最大半径25block
# 直線状にいるエンティティにタグ付け
#
# @input
#   as 0-0-0-0-4
#       視線終端点entity
#   at @e
#       視線主エンティティ
#
# @output
#   entity @e[tag=hit-on-line]
#       直線状にいるエンティティ
#
# @public

#> private
# @private
    #declare tag check-executer #実行者を示す
    #declare tag hit-candidate #ヒットしたエンティティの候補

#実効者にタグ付け
tag @e[distance=..0.1,sort=nearest,limit=1] add check-executer

execute positioned ^ ^ ^10.5 as @e[tag=!check-executer,distance=..11] positioned ^-1002 ^ ^ unless entity @s[distance=..1000] positioned ^2004 ^ ^ unless entity @s[distance=..1000] positioned ^-1002 ^-1002 ^ unless entity @s[distance=..1000] positioned ^ ^2004 ^ unless entity @s[distance=..1000] positioned ^ ^-1002 ^1009.5 unless entity @s[distance=..1000] positioned ^ ^ ^-2020 unless entity @s[distance=..1000] run tag @s add hit-candidate
tag @e[tag=hit-candidate,distance=..22] add hit-on-line
    
#実効者と目印にタグ削除
tag @s remove check-executer
#tag 0-0-0-0-4 remove check-executer
#tag @e[tag=hit-candidate,distance=..30] remove hit-candidate
execute positioned ^ ^ ^10.5 as @e[tag=hit-candidate,distance=..11] run tag @s remove hit-candidate
