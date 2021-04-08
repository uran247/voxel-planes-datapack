#> plane-data:util/culc-deaccelerate
#
# 空気抵抗値を計算
#
# @input
#   storage voxel-planes:input input:{weight,flight-model.engine.horse-power,flight-model.speed.max-speed,reistance,flight-model.speed.climb-rate}
#   score #resistance vp.input
# @output
#   score #resistance vp.return
# @within
#   function plane-data:**

#> private
#
# @private
    #declare score_holder #weight
    #declare score_holder #horse-power
    #declare score_holder #max-speed
    #declare score_holder #climb-rate
    #declare score_holder #engine-number

#巡航速度での加速度計算
execute store result score #weight vp.reg1 run data get storage voxel-planes:input input.flight-model.weight
execute store result score #horse-power vp.reg1 run data get storage voxel-planes:input input.flight-model.engine.horse-power
execute store result score #engine-number vp.reg1 run data get storage voxel-planes:input input.flight-model.engine.number
execute store result score #cruise-speed vp.reg1 run data get storage voxel-planes:input input.flight-model.speed.cruise-speed 34.72
scoreboard players set #deaccelerate vp.return 1837500

scoreboard players operation #deaccelerate vp.return /= #weight vp.reg1
scoreboard players operation #horse-power vp.reg1 *= #engine-number vp.reg1
scoreboard players operation #deaccelerate vp.return *= #horse-power vp.reg1
scoreboard players operation #deaccelerate vp.return /= #cruise-speed vp.reg1 

#巡航速度での空気抵抗計算
execute store result score #resistance vp.reg1 run data get storage voxel-planes:input input.resistance 1
execute store result score #max-speed vp.reg1 run data get storage voxel-planes:input input.flight-model.speed.max-speed 34.72

scoreboard players operation #resistance vp.reg1 *= #cruise-speed vp.reg1
scoreboard players operation #resistance vp.reg1 /= #max-speed vp.reg1

#上昇力計算
execute store result score #climb-rate vp.reg1 run data get storage voxel-planes:input input.flight-model.speed.climb-rate 125

#上昇時の減速量計算
scoreboard players operation #deaccelerate vp.return -= #resistance vp.reg1
scoreboard players operation #deaccelerate vp.return *= #cruise-speed vp.reg1
scoreboard players operation #deaccelerate vp.return /= #climb-rate vp.reg1
scoreboard players operation #deaccelerate vp.return /= #2 vp.Num

#tellraw @p [{"score":{"name":"#deaccelerate","objective":"vp.return"}}]

