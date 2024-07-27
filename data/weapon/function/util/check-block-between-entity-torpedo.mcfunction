#> weapon:util/check-block-between-entity-torpedo
#
# @input
#   as 0-0-0-0-4
#   at @e_source_entity
#
# @public

tp 0-0-0-0-9 0.0 1.0 0.0

    #scoreboard players set #debug vp.reg1 0
execute facing entity @s eyes run function weapon:util/check-block/check-block-between-entity-torpedo-recursive

data remove storage voxel-planes:return return
data modify storage voxel-planes:return return set from entity 0-0-0-0-9 Pos

tp 0-0-0-0-9 0.0 1.0 0.0
