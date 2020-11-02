###射程内に敵がいるか判定###
#実行者：機体

#以前の実行でついてたタグ除去
tag @e[tag=rear-gun-target-candidate,distance=..40] remove rear-gun-target-candidate
tag @e[tag=rear-gun-target,distance=..40] remove rear-gun-target

#indicator召喚
execute as @s at @s run tp 0-0-4-0-0 ^ ^ ^ ~90 ~

#スコア付与
execute as 0-0-4-0-0 run scoreboard players set @s offsetX 0
execute as 0-0-4-0-0 run scoreboard players set @s offsetY 13053
execute as 0-0-4-0-0 run scoreboard players set @s offsetZ 33406

#位置移動
function plane:position/util/calc-triangle-ratio
scoreboard players operation #sin reg1 = #sin return
scoreboard players operation #cos reg1 = #cos return
execute at @s as 0-0-4-0-0 run function plane:position/util/calc-displacement
execute at @s as 0-0-4-0-0 run function plane:position/calc-offset
execute at @s as 0-0-4-0-0 run function plane:position/util/move-parts

#機銃32B以内に敵がいるか判定
execute as @e[tag=enemy-plane,distance=..40] at 0-0-4-0-0 run tag @s[distance=..32] add rear-gun-target-candidate

#判定内にいて一番近い敵にタグ付け
tag @e[tag=rear-gun-target-candidate,distance=..40,limit=1,sort=nearest] add rear-gun-target

#タグ除去
tag @e[tag=rear-gun-target-candidate,distance=..40] remove rear-gun-target-candidate

#エンティティ返却
tp 0-0-4-0-0 0 1 0