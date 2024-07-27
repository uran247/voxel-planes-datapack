#> plane:weapon/util/gun-fcs/aiming-recursive
#
# @input
#   macro enemy_speed: double: 敵の速度
#   macro reachable_range: double: 弾の到達範囲
#   score #bullet-speed: 自分の弾速
#
# @within
#   function plane:weapon/util/gun-fcs
#   function plane:weapon/util/gun-fcs/aiming-recursive

#> private
# @private
    #declare score_holder #new-bullet-speed

# 移動先が弾の到着範囲内に入っていたら目印をつける
$execute positioned ^ ^ ^$(enemy_speed) if entity @s[distance=..$(reachable_range)] run tp 0-0-0-0-4 ~ ~ ~

# 弾の到達範囲更新
$data modify storage minecraft:plane-datapack temporary.new_bullet_speed set value $(reachable_range)
execute store result score #new-bullet-speed vp.reg1 run data get storage minecraft:plane-datapack temporary.new_bullet_speed 10
execute store result storage voxel-planes:input input.reachable_range double 0.1 run scoreboard players operation #new-bullet-speed vp.reg1 += #bullet-speed vp.input

# 再帰
scoreboard players add #recursive-step vp.reg1 1
$execute if score #recursive-step vp.reg1 matches ..20 positioned ^ ^ ^$(enemy_speed) unless entity @s[distance=..$(reachable_range)] run function plane:weapon/util/gun-fcs/aiming-recursive with storage voxel-planes:input input