#> plane:position/util/renew-health-display
#
# 航空機パーツヘルスを体力へ反映
#
# @input
#   executer @e[tag=plane-root]
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
    #declare score_holder #elevator-r
    #declare score_holder #elevator-l
    #declare score_holder #aileron-r
    #declare score_holder #aileron-l
    #declare score_holder #radder

#パーツの体力を体力表示に反映
execute as @e[type=minecraft:donkey,tag=target-parts,tag=plane-seat,distance=..30] store result score @s vp.reg1 run data get entity @s Health
execute as @e[tag=target-parts,tag=plane-hitbox,tag=!cockpit,distance=..30] store result score @s vp.reg1 run data get entity @s Health
scoreboard players set #total-health vp.reg1 0
scoreboard players operation #total-health vp.reg1 += @e[tag=target-parts,tag=plane-hitbox,tag=!cockpit,distance=..30] vp.reg1
scoreboard players operation #total-health vp.reg1 /= #50 vp.Num
execute if score #total-health vp.reg1 matches ..0 run scoreboard players set #total-health vp.reg1 1
execute as @e[type=minecraft:donkey,tag=target-parts,tag=plane-seat,distance=..30] unless score @s vp.reg1 = #total-health vp.reg1 store result entity @s Health float 1 run scoreboard players get #total-health vp.reg1
