###射程内に敵がいるか判定###
#実行者：機体

#以前の実行でついてたタグ除去
tag @e[tag=rear-gun-target-candidate,distance=..40] remove rear-gun-target-candidate
tag @e[tag=rear-gun-target,distance=..40] remove rear-gun-target

#indicator召喚
execute as @s at @s run tp 0-0-0-0-4 ^ ^ ^ ~90 ~
execute as @s at @s run tp 0-0-0-0-a ^ ^ ^ ~90 ~

#スコア付与
execute as 0-0-0-0-4 run scoreboard players set @s offsetX 50
execute as 0-0-0-0-4 run scoreboard players set @s offsetY 1900
execute as 0-0-0-0-4 run scoreboard players set @s offsetZ 4000
execute as 0-0-0-0-a run scoreboard players set @s offsetX 50
execute as 0-0-0-0-a run scoreboard players set @s offsetY 2000
execute as 0-0-0-0-a run scoreboard players set @s offsetZ 3500

#位置移動
execute at @s as 0-0-0-0-4 run function plane:position/util/calc-displacement
execute at @s as 0-0-0-0-4 run function plane:position/calc-offset
execute at @s as 0-0-0-0-4 run function plane:position/util/move-parts
execute at @s as 0-0-0-0-a run function plane:position/util/calc-displacement
execute at @s as 0-0-0-0-a run function plane:position/calc-offset
execute at @s as 0-0-0-0-a run function plane:position/util/move-parts

#機銃40B以内に敵がいるか判定
execute at 0-0-0-0-4 as @e[tag=enemy-plane,distance=..40] facing entity 0-0-0-0-a feet positioned ^ ^ ^40 run tag @s[distance=..40] add rear-gun-target-candidate
#execute at 0-0-0-0-4 facing entity 0-0-0-0-a feet positioned ^ ^ ^40 run particle minecraft:dust 1 0 0 10 ~ ~ ~ 0 0 0 2 0 force

#判定内にいて一番近い敵にタグ付け
tag @e[tag=rear-gun-target-candidate,distance=..55,limit=1,sort=nearest] add rear-gun-target

#タグ除去
tag @e[tag=rear-gun-target-candidate,distance=..55] remove rear-gun-target-candidate

#エンティティ返却
tp 0-0-0-0-4 0 1 0
tp 0-0-0-0-a 0 1 0

