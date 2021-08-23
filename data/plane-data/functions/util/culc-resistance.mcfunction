#> plane-data:util/culc-resistance
#
# 空気抵抗値を計算
#
# @input
#   storage voxel-planes:input input:{weight,flight-model.engine.horse-power,flight-model.speed.max-speed}
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
    #declare score_holder #engine-number
    #declare score_holder #jet-resistance
    #declare score_holder #thrust

#空気抵抗最大値計算
execute store result score #weight vp.reg1 run data get storage voxel-planes:input input.flight-model.weight
execute store result score #engine-number vp.reg1 run data get storage voxel-planes:input input.flight-model.engine.number

# for recipro
execute store result score #horse-power vp.reg1 run data get storage voxel-planes:input input.flight-model.engine.horse-power
execute store result score #max-speed vp.reg1 run data get storage voxel-planes:input input.flight-model.speed.max-speed 34.72
scoreboard players set #resistance vp.return 1837500

scoreboard players operation #resistance vp.return /= #weight vp.reg1
scoreboard players operation #horse-power vp.reg1 *= #engine-number vp.reg1
scoreboard players operation #resistance vp.return *= #horse-power vp.reg1
scoreboard players operation #resistance vp.return /= #max-speed vp.reg1 

# for jet
execute store result score #thrust vp.reg1 run data get storage voxel-planes:input input.flight-model.engine.thrust
scoreboard players set #jet-resistance vp.return 245
scoreboard players operation #jet-resistance vp.return *= #thrust vp.reg1
scoreboard players operation #jet-resistance vp.return *= #engine-number vp.reg1
scoreboard players operation #jet-resistance vp.return /= #weight vp.reg1

scoreboard players operation #resistance vp.return += #jet-resistance vp.return
#tellraw @p [{"score":{"name":"#resistance","objective":"vp.return"}}]
