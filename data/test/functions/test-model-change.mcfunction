#パーツにタグ付け
scoreboard players operation #plane-id reg1 = @s plane-id
execute as @e[tag=plane,tag=!plane-root,tag=!position-processed] if score @s plane-id = #plane-id reg1 run tag @s add target-parts

#
#execute as @s[tag=!stall] as @e[tag=target-parts,tag=model-changeable] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players get @s rolling-udvm
#execute as @s as @e[tag=target-parts,tag=model-changeable] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players get @s flying-udvm
#execute as @e[tag=target-parts,tag=model-changeable] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players get @s parking-udvm
execute as @e[tag=target-parts,tag=model-changeable] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players get @s rolling-udvm

#タグ削除
tag @e[tag=target-parts] remove target-parts
