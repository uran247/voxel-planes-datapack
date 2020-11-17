#ギアのモデル切り替え
#入力 entity:機体
execute if entity @s[tag=!stall] if score @s vp.speed >= @s vp.gear-po-min if score @s vp.speed <= @s vp.gear-po-max as @e[tag=target-parts,tag=model-changeable] store result entity @s HandItems[0].tag.CustomModelData int 1 run scoreboard players get @s vp.rolling-udvm
execute if score @s vp.speed >= @s vp.gear-ret-min if score @s vp.speed <= @s vp.gear-ret-max as @e[tag=target-parts,tag=model-changeable] store result entity @s HandItems[0].tag.CustomModelData int 1 run scoreboard players get @s vp.flying-udvm

