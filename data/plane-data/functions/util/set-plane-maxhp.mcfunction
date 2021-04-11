#> plane-data:util/set-plane-maxhp
#
# @input
#   executer @s[tag=plane-hitbox]
#   storage voxel-planes:input
#
# @within function plane-data:**
#

#> private
#
# @private
    #declare tag plane-init
    #declare tag plane-body


#パーツの総HP取得
execute as @e[tag=plane-init,tag=plane-hitbox,tag=!cockpit,distance=..30] store result score @s vp.reg1 run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base
scoreboard players set #total-health vp.reg1 0
scoreboard players operation #total-health vp.reg1 += @e[tag=plane-init,tag=plane-hitbox,tag=!cockpit,distance=..30] vp.reg1
scoreboard players operation #total-health vp.reg1 /= #50 vp.Num
execute if score #total-health vp.reg1 matches ..0 run scoreboard players set #total-health vp.reg1 1
execute as @e[type=minecraft:donkey,tag=plane-init,tag=plane-seat,distance=..30] store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base double 1 run scoreboard players get #total-health vp.reg1
