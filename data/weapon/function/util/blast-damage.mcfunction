#> weapon:util/blast-damage
#
#   @input
#       as @e_victim #ダメージを受ける対象
#       score @e_victim vp.input #被ダメージ
#       tag @p weapon-owner #ダメージを与えたプレイヤー
#
# @public

data remove storage voxel-planes:input input
execute store result storage voxel-planes:input input.damage float 1 run scoreboard players get @s vp.input
execute as @s run function weapon:util/damage with storage voxel-planes:input input
