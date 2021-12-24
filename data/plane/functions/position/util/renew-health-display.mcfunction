#> plane:position/util/renew-health-display
#
# 航空機パーツヘルスを体力へ反映
#
# @input
#   executer @e[type=minecraft:donkey,tag=target-parts,tag=plane-seat,distance=..30]
#   position @e[tag=plane-root]
#
# @within
#   function plane:position/position
#   function weapon:util/destroy-hitbox-message
#
# @private
    #declare score_holder #total-health #パーツの合計体力を示す
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

#各パーツの体力取得
execute store result score #body vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.body.hp
execute store result score #engine vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine.hp
execute store result score #engine-r vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-r.hp
execute store result score #engine-l vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-l.hp
execute store result score #engine-r2 vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-r2.hp
execute store result score #engine-l2 vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-l2.hp
execute store result score #elevator vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator.hp
execute store result score #elevator-r vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator-r.hp
execute store result score #elevator-l vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator-l.hp
execute store result score #aileron-r vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-r.hp
execute store result score #aileron-l vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-l.hp
execute store result score #aileron-r2 vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-r2.hp
execute store result score #aileron-l2 vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-l2.hp
execute store result score #radder vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.radder.hp
execute store result score #radder-r vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.radder-r.hp
execute store result score #radder-l vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.radder-l.hp

#パーツの合計体力取得
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

#tellraw @p [{"score" : {"name":"#total-health", "objective":"vp.reg1"}}]

#パーツの体力を体力表示に反映
execute store result score @s vp.reg1 run data get entity @s Health
scoreboard players operation #total-health vp.reg1 /= #50 vp.Num
execute if score #total-health vp.reg1 matches ..0 run scoreboard players set #total-health vp.reg1 1
execute unless score @s vp.reg1 = #total-health vp.reg1 store result entity @s Health float 1 run scoreboard players get #total-health vp.reg1
