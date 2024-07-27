#> plane:move/plane-move/rolling/correct-ang-xz
#
# 宙返り状態になることを阻止
#
# @input
#   executer @e[tag=plane-root,tag=!flying]
#
# @within plane:move/plane-move/turn-rolling


execute unless entity @s[scores={vp.AngX=-9000..9000}] run scoreboard players add @s vp.AngX 18000
execute unless entity @s[scores={vp.AngX=-9000..9000}] run scoreboard players add @s vp.AngZ 18000
