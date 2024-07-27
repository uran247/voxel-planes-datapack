#> weapon:util/check-block/check-block-between-entity-torpedo-recursive
#
# @input
#   as 0-0-0-0-4
#   at @e_source_entity
#   facing entity 0-0-0-0-4
#
# @within
#   function weapon:util/check-block-between-entity-torpedo
#   function weapon:util/check-block/check-block-between-entity-torpedo-recursive


# ブロック検出したら0-0-0-0-9を置く
execute positioned ^ ^ ^1000 if entity @s[distance=..1000] positioned ^ ^ ^-1000 positioned ^ ^ ^0.2 if loaded ~ ~ ~ unless block ~ ~ ~ #tags:torpedo-passable run tp 0-0-0-0-9 ~ ~ ~
    #scoreboard players add #debug vp.reg1 1
    #tellraw @p {"score":{"name":"#debug","objective":"vp.reg1"}}

# まだブロックが見つかっておらず検知範囲からはみ出ていないなら続行
execute positioned ^ ^ ^1000 if entity @s[distance=..1000] positioned ^ ^ ^-1000 positioned ^ ^ ^0.2 if loaded ~ ~ ~ if block ~ ~ ~ #tags:torpedo-passable run function weapon:util/check-block/check-block-between-entity-torpedo-recursive
    #execute positioned ^ ^ ^1000 if entity @s[distance=..1000] positioned ^ ^ ^-1000 positioned ^ ^ ^0.2 if loaded ~ ~ ~ unless block ~ ~ ~ air run say detect

