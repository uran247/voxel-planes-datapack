#> plane:position/force-packet
#
# エンティティのinterpolation_startを強制更新してパケットを送信させる
#
# @within function plane:position/position

#execute as @e[tag=has-model,tag=target-parts,distance=..32] run data modify entity @s interpolation_start set value -1
    #execute as @e[tag=has-model,tag=target-parts,distance=..32] run tellraw @p [{"nbt":"interpolation_start","entity":"@s"}]
