#プロペラの停止稼働モデル切り替え
#入力 entity:機体
execute if score @s speed >= @s plpr-stop-min if score @s speed <= @s plpr-stop-max as @e[tag=target-parts,tag=model-changeable] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players get @s parking-udvm
execute if score @s speed >= @s plpr-start-min if score @s speed <= @s plpr-start-max as @e[tag=target-parts,tag=model-changeable] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players get @s rolling-udvm
