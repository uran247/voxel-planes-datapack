#> weapon:missile/turn-propotional
#
# @input
#   as @e[tag=missile-moving,tag=ir-missile]
#   at @e[tag=missile-moving,tag=ir-missile]
#   oh_my_dat @e[tag=missile-moving,tag=ir-missile]
#
# @within function weapon:missile/ir-missile-manager

#> prv
# @private
    #declare score_holder #los-x-current
    #declare score_holder #los-x-old
    #declare score_holder #los-x-delta
    #declare score_holder #los-y-current
    #declare score_holder #los-y-old
    #declare score_holder #los-y-delta
    #declare score_holder #turn-rate
    #declare score_holder #turn-rate-minus
    #declare score_holder #turn-x
    #declare score_holder #turn-y

execute facing entity @e[tag=ir-missile-target,distance=..256,limit=1] feet positioned as 0-0-0-0-1 run tp 0-0-0-0-1 0.0 0.0 0.0 ~ ~
data modify storage minecraft:plane-datapack temporary.los-current set from entity 0-0-0-0-1 Rotation

# 1tick前のデータが無い場合LOSの保存だけして終了
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].data.los-old run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].data.los-old set from storage minecraft:plane-datapack temporary.los-current
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].data.los-old run return fail

# LOSのy軸のデルタを計算
execute store result score #los-x-current vp.reg1 run data get storage plane-datapack temporary.los-current[0] 100
    #tellraw @p [{"score":{"objective": "vp.reg1","name": "#los-x-current"}}]
execute store result score #los-x-old vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].data.los-old[0] 100
execute store result score #los-x-delta vp.reg1 run scoreboard players operation #los-x-current vp.reg1 -= #los-x-old vp.reg1
    #tellraw @p [{"score":{"objective": "vp.reg1","name": "#los-x-old"}}]
    #tellraw @p [{"score":{"objective": "vp.reg1","name": "#los-x-delta"}}]

# LOSのx軸のデルタを計算
execute store result score #los-y-current vp.reg1 run data get storage plane-datapack temporary.los-current[1] 100
    #tellraw @p [{"score":{"objective": "vp.reg1","name": "#los-y-current"}}]
execute store result score #los-y-old vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].data.los-old[1] 100
execute store result score #los-y-delta vp.reg1 run scoreboard players operation #los-y-current vp.reg1 -= #los-y-old vp.reg1
    #tellraw @p [{"score":{"objective": "vp.reg1","name": "#los-y-old"}}]
    #tellraw @p [{"score":{"objective": "vp.reg1","name": "#los-y-delta"}}]

# deltaが-359とかになるとミサイルの最大旋回速度との比較ができないので-180..180に丸める
execute if score #los-x-delta vp.reg1 matches ..-18000 run scoreboard players add #los-x-delta vp.reg1 36000
execute if score #los-x-delta vp.reg1 matches 18000.. run scoreboard players remove #los-x-delta vp.reg1 36000
execute if score #los-y-delta vp.reg1 matches ..-18000 run scoreboard players add #los-y-delta vp.reg1 36000
execute if score #los-y-delta vp.reg1 matches 18000.. run scoreboard players remove #los-y-delta vp.reg1 36000

# 旋回速度計算 LOS*3と旋回速度のうち小さい方を採用
# しかし#los-delta側の数値をいじるのはコマンド数が多くなるので右記で比較 LOS>0: min(los-delta,turn-rate/3) LOS<0: max(los-delta,turn-rate/-3)
scoreboard players operation #turn-rate vp.reg1 = @s vp.turn-rate
scoreboard players operation #turn-rate-minus vp.reg1 = @s vp.turn-rate
scoreboard players operation #turn-rate-minus vp.reg1 *= #-1 vp.Num

scoreboard players operation #turn-x vp.reg1 = #los-x-delta vp.reg1
scoreboard players operation #turn-x vp.reg1 *= #3 vp.Num
scoreboard players operation #turn-y vp.reg1 = #los-y-delta vp.reg1
scoreboard players operation #turn-y vp.reg1 *= #3 vp.Num

execute if score #turn-x vp.reg1 matches 1.. if score #turn-x vp.reg1 > #turn-rate vp.reg1 run scoreboard players operation #turn-x vp.reg1 = #turn-rate vp.reg1
execute if score #turn-x vp.reg1 matches ..-1 if score #turn-x vp.reg1 < #turn-rate-minus vp.reg1 run scoreboard players operation #turn-x vp.reg1 = #turn-rate-minus vp.reg1
execute if score #turn-y vp.reg1 matches 1.. if score #turn-y vp.reg1 > #turn-rate vp.reg1 run scoreboard players operation #turn-y vp.reg1 = #turn-rate vp.reg1
execute if score #turn-y vp.reg1 matches ..-1 if score #turn-y vp.reg1 < #turn-rate-minus vp.reg1 run scoreboard players operation #turn-y vp.reg1 = #turn-rate-minus vp.reg1

# 次tickの計算用に現在のLOS保存
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].data.los-old set from storage minecraft:plane-datapack temporary.los-current

# 返り値
data remove storage voxel-planes:return return
execute store result storage voxel-planes:return return.x double 0.01 run scoreboard players get #turn-x vp.reg1
execute store result storage voxel-planes:return return.y double 0.01 run scoreboard players get #turn-y vp.reg1
    #tellraw @p [{"nbt":"return","storage": "voxel-planes:return"}]
