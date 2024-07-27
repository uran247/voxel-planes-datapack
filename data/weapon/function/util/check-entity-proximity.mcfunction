#> weapon:util/check-entity-proximity
#
# エンティティの視線上にエンティティがいるかを調べる　最大半径25block
# 直線状にいるエンティティにタグ付け
#
# @input
#   as @e_range
#       視線終端点entity
#   positioned @e_executer
#       視線主エンティティ
#   facing @e_range
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
    #declare tag hit-candidate #ヒットしたエンティティの候補

#実効者にタグ付け
tag @s add check-executer

#実効者 の直線上にいるエンティティにタグ付け
execute positioned ^ ^ ^10.5 as @e[tag=!check-executer,tag=!entity-nohit,distance=..11] positioned ^-1002 ^ ^ unless entity @s[distance=..1000] positioned ^2004 ^ ^ unless entity @s[distance=..1000] positioned ^-1002 ^-1002 ^ unless entity @s[distance=..1000] positioned ^ ^2004 ^ unless entity @s[distance=..1000] positioned ^ ^-1002 ^-1010.5 unless entity @s[distance=..1000] run tag @s add hit-candidate
    #execute if entity @e[tag=hit-candidate] run say hit-candidate
tag @e[tag=hit-candidate,distance=..22] add hit-on-line
    #execute if entity @e[tag=hit-on-line] run say hit-on-line

# 視線終点entityより向こうにいるやつのタグを削除
execute positioned as @s as @e[tag=hit-on-line,distance=..20] positioned ^ ^ ^1000 if entity @s[distance=..1000] run tag @s remove hit-on-line
    #execute if entity @e[tag=hit-on-line] run say hit-on-line2

#実効者と目印にタグ削除
tag @s remove check-executer
execute positioned ^ ^ ^10.5 as @e[tag=hit-candidate,distance=..11] run tag @s remove hit-candidate
