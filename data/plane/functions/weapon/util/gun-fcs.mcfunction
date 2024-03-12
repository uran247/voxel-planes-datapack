#> plane:weapon/util/gun-fcs
#
# 射撃管制レーダーの処理を行う
#
# @input
#   executer @e_tag=plane-root
#   position at @e_tag=plane-root
#   pilot @p_tag=plane-pilot
#
# @within
#   function plane:weapon/weapon-manager
#

#> @within
#   function plane:weapon/util/gun-fcs
    #declare tag fcs-target
    #declare score_holder #bullet-speed
    #declare score_holder #recursive-step


# ターゲットを選定
execute as @e[tag=plane-root,distance=0.1..,sort=nearest,limit=1] run tag @s add fcs-target

# ターゲットの移動速度と方向取得
data remove storage voxel-planes:input input
execute store result storage voxel-planes:input input.enemy_speed double 0.00008333 run scoreboard players get @s vp.speed

# 弾の到達範囲取得
data modify storage voxel-planes:input input.reachable_range set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.speed

# 自分の弾速取得
execute store result score #bullet-speed vp.input run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.speed 10

# 再帰のステップ数初期化
scoreboard players set #recursive-step vp.reg1 0

# ターゲットの移動速度と自分の弾速から交点を出す
execute at @e[tag=fcs-target] run function plane:weapon/util/gun-fcs/aiming-recursive with storage voxel-planes:input input

# 交点方向にパーティクル表示
execute rotated as @s as 0-0-0-0-4 positioned 0.0 1.0 0.0 unless entity @s[distance=..1] positioned as @s positioned ~ ~3.625 ~ run function plane:weapon/util/gun-fcs/particle

# 終了処理
tag @e[tag=fcs-target] remove fcs-target
tp 0-0-0-0-4 0.0 1.0 0.0