#ギアのモデル切り替え
#入力 entity:機体
execute if entity @s[tag=!stall] if score @s speed >= @s gear-pullout-min if score @s speed <= @s gear-pullout-max as @e[tag=target-parts,tag=model-changeable] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players get @s rolling-udvm
execute if score @s speed >= @s gear-retract-min if score @s speed <= @s gear-retract-max as @e[tag=target-parts,tag=model-changeable] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players get @s flying-udvm

