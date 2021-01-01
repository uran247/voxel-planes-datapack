#> plane:move/plane-move/flying/change-gear-model
#
# プロペラの停止稼働モデル切り替え
#
# @input
#   execute @e[tag=plane-root]
#
# @within
#   function plane:move/plane-move/flying

execute if entity @s[tag=!stall] if score @s vp.speed >= @s vp.gear-po-min if score @s vp.speed <= @s vp.gear-po-max as @e[tag=target-parts,tag=model-changeable] store result entity @s HandItems[0].tag.CustomModelData int 1 run scoreboard players get @s vp.rolling-cmd
execute if score @s vp.speed >= @s vp.gear-ret-min if score @s vp.speed <= @s vp.gear-ret-max as @e[tag=target-parts,tag=model-changeable] store result entity @s HandItems[0].tag.CustomModelData int 1 run scoreboard players get @s vp.flying-cmd

