#> plane:forceload-manager
#
# 全チャンクのforceloadを解除してからシステムチャンクをloadし直してAI飛行機のいるチャンクをロードする
#
#

forceload remove all
execute in overworld run forceload add 0 0
execute in the_nether run forceload add 0 0
execute in the_end run forceload add 0 0
execute as @a at @s run forceload add 0 0
execute at @e[tag=has-dummy-rider] run forceload add ~ ~
