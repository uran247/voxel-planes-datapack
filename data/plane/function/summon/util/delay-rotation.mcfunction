#角度ファンクションを起動させるために時間差で0.01度機体を回転させる
execute as @e[tag=delay-rotation,tag=plane-root] at @s store result score @s vp.reg1 run data get entity @p Rotation[0] 100
execute as @e[tag=delay-rotation,tag=plane-root] run scoreboard players remove @s[scores={vp.reg1=18100..}] vp.reg1 36000
execute as @e[tag=delay-rotation,tag=plane-root] run scoreboard players add @s[scores={vp.reg1=..-18100}] vp.reg1 36000
execute as @e[tag=delay-rotation,tag=plane-root] run scoreboard players operation @s vp.AngY = @s vp.reg1
tag @e[tag=delay-rotation] add need-calc-offset
schedule function plane:summon/util/delay-rotation2 1

