#> plane:move/plane-move/rolling/change-plpr-model
#
# プロペラの停止稼働モデル切り替え
#
# @input
#   execute @e[tag=plane-root]
#
# @within
#   function plane:move/plane-move/rolling

#> private
#
# @private
    #declare tag propeller-start

execute if entity @s[tag=propeller-start] if score @s vp.speed <= @s vp.prop-strt as @e[tag=target-parts,tag=model-changeable,distance=..30] store result entity @s item.components.minecraft:custom_model_data int 1 run scoreboard players get @s vp.parking-cmd
execute if entity @s[tag=propeller-start] if score @s vp.speed <= @s vp.prop-strt run tag @s remove propeller-start
execute if entity @s[tag=!propeller-start] if score @s vp.speed > @s vp.prop-strt as @e[tag=target-parts,tag=model-changeable,distance=..30] store result entity @s item.components.minecraft:custom_model_data int 1 run scoreboard players get @s vp.rolling-cmd
execute if entity @s[tag=!propeller-start] if score @s vp.speed > @s vp.prop-strt run tag @s add propeller-start
