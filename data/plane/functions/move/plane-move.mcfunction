#flyingタグで実行するfunctionを選別
#飛行機を動かすファンクション
#条件:tickで実行 execute as @e[type=armor_stand,tag=plane-root,scores={speed=1..}] at @s run function plane:move/move

#実行者にタグ付け
tag @s add plane-move-executer
#scoreboard players operation #plane-id reg1 = @s plane-id
#execute as @e[distance=..20,tag=plane] if score @s plane-id = #plane-id reg1 run tag @s add target-parts

#飛行・滑走実行
execute if entity @s[tag=!flying] run function plane:move/plane-move/rolling
execute if entity @s[tag=flying] run function plane:move/plane-move/flying

#方向転換
execute if entity @s[tag=!flying] run function plane:move/plane-move/turn-rolling
execute if entity @s[tag=flying] run function plane:move/plane-move/turn-flying

#title @a times 0 80 20
#title @a subtitle [{"text":"加速力:","color":"yellow","bold":false},{"score" : {"name":"#base-accelerate", "objective":"reg1"}},{"text":" 旋回速度","color":"yellow","bold":false},{"score" : {"name":"#max-yaw", "objective":"reg1"}}]
#title @a title {"text":" "}

#タグ解除
#execute at @s run tag @e[distance=..20,tag=target-parts] remove target-parts
tag @s remove plane-move-executer

