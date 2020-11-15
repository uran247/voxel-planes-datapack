#角度ファンクションを起動させるために時間差で0.01度機体を回転させる
execute as @e[tag=delay-rotation,tag=plane-root] run scoreboard players add @s vp.AngY 1
tag @e[tag=delay-rotation] remove delay-rotation
