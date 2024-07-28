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
    #declare score_holder #body
    #declare score_holder #engine
    #declare score_holder #engine-r
    #declare score_holder #engine-l
    #declare score_holder #engine-r2
    #declare score_holder #engine-l2
    #declare score_holder #elevator
    #declare score_holder #elevator-r
    #declare score_holder #elevator-l
    #declare score_holder #aileron-r
    #declare score_holder #aileron-l
    #declare score_holder #aileron-r2
    #declare score_holder #aileron-l2
    #declare score_holder #radder
    #declare score_holder #radder-r
    #declare score_holder #radder-l

#各パーツのHP取得
execute store result score #body vp.reg1 run data get storage voxel-planes:input input.hitbox.body.max-hp
execute store result score #engine vp.reg1 run data get storage voxel-planes:input input.hitbox.engine.max-hp
execute store result score #engine-r vp.reg1 run data get storage voxel-planes:input input.hitbox.engine-r.max-hp
execute store result score #engine-l vp.reg1 run data get storage voxel-planes:input input.hitbox.engine-l.max-hp
execute store result score #engine-r2 vp.reg1 run data get storage voxel-planes:input input.hitbox.engine-r2.max-hp
execute store result score #engine-l2 vp.reg1 run data get storage voxel-planes:input input.hitbox.engine-l2.max-hp
execute store result score #elevator vp.reg1 run data get storage voxel-planes:input input.hitbox.elevator.max-hp
execute store result score #elevator-r vp.reg1 run data get storage voxel-planes:input input.hitbox.elevator-r.max-hp
execute store result score #elevator-l vp.reg1 run data get storage voxel-planes:input input.hitbox.elevator-l.max-hp
execute store result score #aileron-r vp.reg1 run data get storage voxel-planes:input input.hitbox.aileron-r.max-hp
execute store result score #aileron-l vp.reg1 run data get storage voxel-planes:input input.hitbox.aileron-l.max-hp
execute store result score #aileron-r2 vp.reg1 run data get storage voxel-planes:input input.hitbox.aileron-r2.max-hp
execute store result score #aileron-l2 vp.reg1 run data get storage voxel-planes:input input.hitbox.aileron-l2.max-hp
execute store result score #radder vp.reg1 run data get storage voxel-planes:input input.hitbox.radder.max-hp
execute store result score #radder-r vp.reg1 run data get storage voxel-planes:input input.hitbox.radder-r.max-hp
execute store result score #radder-l vp.reg1 run data get storage voxel-planes:input input.hitbox.radder-l.max-hp

#パーツの総HP取得
scoreboard players set #total-health vp.reg1 0
scoreboard players operation #total-health vp.reg1 += #body vp.reg1
scoreboard players operation #total-health vp.reg1 += #engine vp.reg1
scoreboard players operation #total-health vp.reg1 += #engine-r vp.reg1
scoreboard players operation #total-health vp.reg1 += #engine-l vp.reg1
scoreboard players operation #total-health vp.reg1 += #engine-r2 vp.reg1
scoreboard players operation #total-health vp.reg1 += #engine-l2 vp.reg1
scoreboard players operation #total-health vp.reg1 += #elevator vp.reg1
scoreboard players operation #total-health vp.reg1 += #elevator-r vp.reg1
scoreboard players operation #total-health vp.reg1 += #elevator-l vp.reg1
scoreboard players operation #total-health vp.reg1 += #aileron-r vp.reg1
scoreboard players operation #total-health vp.reg1 += #aileron-l vp.reg1
scoreboard players operation #total-health vp.reg1 += #aileron-r2 vp.reg1
scoreboard players operation #total-health vp.reg1 += #aileron-l2 vp.reg1
scoreboard players operation #total-health vp.reg1 += #radder vp.reg1
scoreboard players operation #total-health vp.reg1 += #radder-r vp.reg1
scoreboard players operation #total-health vp.reg1 += #radder-l vp.reg1

#ロバの最大体力に代入
scoreboard players operation #total-health vp.reg1 /= #50 vp.Num
execute if score #total-health vp.reg1 matches ..0 run scoreboard players set #total-health vp.reg1 1
execute as @e[type=minecraft:donkey,tag=plane-init,tag=plane-seat,distance=..30] store result entity @s Attributes[{id:"minecraft:generic.max_health"}].Base double 1 run scoreboard players get #total-health vp.reg1
