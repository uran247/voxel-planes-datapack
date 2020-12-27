#> plane:controll/weapon/decrease-reload-time
#
# @input
#   executer @e[tag=plane-root]
#
# リロード時間減算
#
# @within function plane:weapon/weapon-manager

scoreboard players remove @s[scores={vp.w1-reload=1..}] vp.w1-reload 1
scoreboard players remove @s[scores={vp.w2-reload=1..}] vp.w2-reload 1
scoreboard players remove @s[scores={vp.w3-reload=1..}] vp.w3-reload 1
scoreboard players remove @s[scores={vp.w4-reload=1..}] vp.w4-reload 1
scoreboard players remove @s[scores={vp.w5-reload=1..}] vp.w5-reload 1
scoreboard players remove @s[scores={vp.w6-reload=1..}] vp.w6-reload 1
scoreboard players remove @s[scores={vp.w7-reload=1..}] vp.w7-reload 1
