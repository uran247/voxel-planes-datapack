#入力：entity 機体
#処理：入力を飛行モデルにする

scoreboard players operation #plane-id vp.reg1 = @s vp.plane-id
scoreboard players operation #udvm vp.reg1 = @s vp.flying-udvm
execute as @e[tag=model-changeable] if score @s vp.plane-id = #plane-id vp.reg1 store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players get @s vp.flying-udvm
execute as @e[tag=model-changeable-cmd] if score @s vp.plane-id = #plane-id vp.reg1 store result entity @s HandItems[0].tag.CustomModelData int 1 run scoreboard players get @s vp.flying-udvm