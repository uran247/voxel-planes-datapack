#> plane:move/plane-move/flying/change-gear-model
#
# プロペラの停止稼働モデル切り替え
#
# @input
#   execute @e[tag=plane-root]
#
# @within
#   function plane:move/plane-move/flying

#> private
# @private
    #declare tag flying-model

execute if entity @s[tag=flying-model,tag=!stall] if score @s vp.speed <= @s vp.gear-ret as @e[tag=target-parts,tag=model-changeable,distance=..30] store result entity @s item.tag.CustomModelData int 1 run scoreboard players get @s vp.rolling-cmd
execute if entity @s[tag=flying-model,tag=!stall] if score @s vp.speed <= @s vp.gear-ret run tag @s remove flying-model

execute if entity @s[tag=!flying-model] if score @s vp.speed > @s vp.gear-ret as @e[tag=target-parts,tag=model-changeable,distance=..30] store result entity @s item.tag.CustomModelData int 1 run scoreboard players get @s vp.flying-cmd
execute if entity @s[tag=!flying-model] if score @s vp.speed > @s vp.gear-ret run tag @s add flying-model
