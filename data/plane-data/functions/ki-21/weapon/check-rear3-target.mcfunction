#> plane-data:ki-21/weapon/check-rear3-target
#
# @input
#   executer @e[tag=plane-root]
#
# 射程内に敵がいるか判定 
#
# @within
#   function plane-data:ki-21/ki21-weapon-manager
#   plane-data:ki-21/weapon/rear-gun3
        #declare tag rear-gun-target #後部機銃の攻撃対象であることを示す
        #declare tag rear-gun-target-candidate #後部機銃の攻撃対象候補であることを示す


#以前の実行でついてたタグ除去
tag @e[tag=rear-gun-target-candidate,distance=..40] remove rear-gun-target-candidate
tag @e[tag=rear-gun-target,distance=..40] remove rear-gun-target

#indicator召喚
execute as @s at @s run tp 0-0-0-0-4 ^ ^ ^ ~90 ~

#スコア付与
execute as 0-0-0-0-4 run scoreboard players set @s vp.offsetX 0
execute as 0-0-0-0-4 run scoreboard players set @s vp.offsetY 13053
execute as 0-0-0-0-4 run scoreboard players set @s vp.offsetZ 33406

#位置移動
function plane:position/util/calc-triangle-ratio
scoreboard players operation #sin vp.reg1 = #sin vp.return
scoreboard players operation #cos vp.reg1 = #cos vp.return
execute at @s as 0-0-0-0-4 run function plane:position/util/calc-displacement
execute at @s as 0-0-0-0-4 run function plane:position/calc-offset
execute at @s as 0-0-0-0-4 run function plane:position/util/move-parts

#機銃32B以内に敵がいるか判定
execute as @e[tag=enemy-plane,distance=..40] at 0-0-0-0-4 run tag @s[distance=..32] add rear-gun-target-candidate

#判定内にいて一番近い敵にタグ付け
tag @e[tag=rear-gun-target-candidate,distance=..40,sort=nearest,limit=1] add rear-gun-target

#タグ除去
tag @e[tag=rear-gun-target-candidate,distance=..40] remove rear-gun-target-candidate

#エンティティ返却
tp 0-0-0-0-4 0 1 0