###射程内に敵がいるか判定###
#実行者：機体

#以前の実行でついてたタグ除去
tag @e[tag=rear-gun-target-candidate,distance=..32] remove rear-gun-target-candidate
tag @e[tag=rear-gun-target,distance=..32] remove rear-gun-target

#indicator召喚
tp 0-0-0-0-4 ~ ~ ~

#スコア付与
execute as 0-0-0-0-4 run scoreboard players set @s offsetX 0
execute as 0-0-0-0-4 run scoreboard players set @s offsetY 1000
execute as 0-0-0-0-4 run scoreboard players set @s offsetZ 0

#位置移動
function plane:position/util/calc-triangle-ratio
scoreboard players operation #sin reg1 = #sin return
scoreboard players operation #cos reg1 = #cos return
execute at @s as 0-0-0-0-4 run function plane:position/util/calc-displacement
execute at @s as 0-0-0-0-4 run function plane:position/calc-offset
execute at @s as 0-0-0-0-4 run function plane:position/util/move-parts

#debug
#execute at @s facing entity 0-0-0-0-4 feet positioned ^ ^ ^10 run particle minecraft:smoke ~ ~ ~ 0 0 0 1 0 force
#tellraw @p [{"nbt":"Pos","entity":"0-0-0-0-4"}] 

#後方32B以内に敵がいるか判定
execute at @s run tag @e[tag=enemy-plane,distance=..32] add rear-gun-target-candidate
execute at @s as @e[tag=rear-gun-target-candidate,distance=..32] positioned ^ ^ ^-512 run tag @s[distance=512..] remove rear-gun-target-candidate

#機体上側方向に敵がいるか判定
execute at @s facing entity 0-0-0-0-4 feet as @e[tag=rear-gun-target-candidate,distance=..32] positioned ^ ^ ^512 run tag @s[distance=..512] remove rear-gun-target-candidate

#判定内にいて一番近い敵にタグ付け
tag @e[tag=rear-gun-target-candidate,distance=..32,limit=1,sort=nearest] add rear-gun-target

#エンティティ返却
tp 0-0-0-0-4 0 1 0

