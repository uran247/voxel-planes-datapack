#> plane-data:util/culc-energy-loss
#
# エネルギーロスを計算
#
# @input
#   storage voxel-planes:input input:{resistance,flight-model.energy-loss-rate}
# @output
#   score #energy-loss vp.return
# @within
#   function plane-data:**

#エネルギーロス計算
execute store result score #energy-loss vp.return run data get storage voxel-planes:input input.flight-model.energy-loss-rate 100
execute store result score #resistance vp.reg1 run data get storage voxel-planes:input input.resistance

scoreboard players operation #energy-loss vp.return *= #resistance vp.reg1
scoreboard players operation #energy-loss vp.return /= #100 vp.Num

#tellraw @p [{"score":{"name":"#energy-loss","objective":"vp.return"}}]


