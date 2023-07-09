#> plane:move/plane-move
#
# 飛行機の移動を実行
#
# @input
#   executer @e[tag=plane-root,scores={speed=1..}]
#
# @within plane:plane-manager
    #declare tag plane-move-executer #操作対象飛行機のルートであることを示す
#

#実行者にタグ付け
tag @s add plane-move-executer
#scoreboard players operation #plane-id vp.reg1 = @s plane-id
#execute as @e[distance=..20,tag=plane] if score @s plane-id = #plane-id vp.reg1 run tag @s add target-parts

#afterburner処理
function plane:move/plane-afterburner

#飛行・滑走実行
execute if entity @s[tag=!flying] run function plane:move/plane-move/rolling
execute if entity @s[tag=flying] run function plane:move/plane-move/flying

#方向転換
execute if entity @s[tag=!flying] run function plane:move/plane-move/turn-rolling
execute if entity @s[tag=flying] run function plane:move/plane-move/turn-flying


#title @a times 0 80 20
#title @a subtitle [{"text":"加速力:","color":"yellow","bold":false},{"score" : {"name":"#base-accelerate", "objective":"vp.reg1"}},{"text":" 旋回速度","color":"yellow","bold":false},{"score" : {"name":"#max-yaw", "objective":"vp.reg1"}}]
#title @a title {"text":" "}

#タグ解除
#execute at @s run tag @e[distance=..20,tag=target-parts] remove target-parts
tag @s remove plane-move-executer

