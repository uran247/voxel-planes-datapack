#> debug:set-hitbox-data
#
# 
#

#data modify storage debug:test data set value {offset:[0d,-0.3d,0d],width:1,height:1}

data modify entity @s height set from storage debug:test data.height
data modify entity @s width set from storage debug:test data.width
execute store result score @s vp.offsetX run data get storage debug:test data.offset[0] 1000
execute store result score @s vp.offsetY run data get storage debug:test data.offset[1] 1000
execute store result score @s vp.offsetZ run data get storage debug:test data.offset[2] 1000
tag @e[tag=plane-root] add need-calc-offset
