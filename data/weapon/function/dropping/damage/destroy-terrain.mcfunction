#> weapon:dropping/damage/destroy-terrain
#
# 地形を破壊する
#
# @input
#   executer @e[tag=bomb-move-executer]
#   entity @e[tag=hit-weapon]
#
# @within weapon:dropping/dropping-manager
#

#> prv
# @private
    #declare tag blast

summon creeper 0.0 0.0 0.0 {ExplosionRadius:1b,ignited:1b,Fuse:0s,Silent:1b,Tags:[blast]}
execute positioned 0.0 0.0 0.0 store result entity @e[type=creeper,tag=blast,distance=..1,limit=1] ExplosionRadius byte 0.01 run scoreboard players get @s vp.weight
execute positioned 0.0 0.0 0.0 run tp @e[type=creeper,tag=blast,distance=..1,limit=1] @s