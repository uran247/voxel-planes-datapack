#入力：entity 機体
#処理：入力を飛行モデルにする

scoreboard players operation #plane-id reg1 = @s plane-id
scoreboard players operation #udvm reg1 = @s flying-udvm
execute as @e[tag=model-changeable] if score @s plane-id = #plane-id reg1 store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players get @s flying-udvm
execute as @e[tag=model-changeable-cmd] if score @s plane-id = #plane-id reg1 store result entity @s HandItems[0].tag.CustomModelData int 1 run scoreboard players get @s flying-udvm