#hitした周囲のエンティティにダメージを与える
#撃墜メッセージやダメージエフェクトも出す
#使えるタグ　bomb-move-executer：弾体  bomber:発射母体
#実行者：弾体

#爆弾のplane-id記憶
scoreboard players operation #bomb-id reg1 = @s plane-id
#爆弾の投下主判定
execute as @a if score @s plane-id = #bomb-id reg1 run tag @s add bomb-owner

#### ダメージ判定 ####
#hpからダメージを引く]
execute as @e[tag=!entity-nohit,distance=..32] run function weapon:util/set-entity-hp
scoreboard players operation #damage reg1 = @s damage
execute as @e[tag=base,distance=..50] run function weapon:dropping/damage/base-damage
scoreboard players set @e[tag=!entity-nohit,distance=..32] reg2 0
scoreboard players operation #damage reg1 /= #2 Num
scoreboard players operation @e[tag=!entity-nohit,distance=..2] reg2 += #damage reg1
scoreboard players operation #damage reg1 /= #2 Num
scoreboard players operation @e[tag=!entity-nohit,distance=..4] reg2 += #damage reg1
scoreboard players operation #damage reg1 /= #2 Num
scoreboard players operation @e[tag=!entity-nohit,distance=..6] reg2 += #damage reg1
scoreboard players operation #damage reg1 /= #2 Num
scoreboard players operation @e[tag=!entity-nohit,distance=..8] reg2 += #damage reg1
scoreboard players operation #damage reg1 /= #2 Num
scoreboard players operation @e[tag=!entity-nohit,distance=..10] reg2 += #damage reg1
scoreboard players operation #damage reg1 /= #2 Num
scoreboard players operation @e[tag=!entity-nohit,distance=..12] reg2 += #damage reg1
scoreboard players operation #damage reg1 /= #2 Num
scoreboard players operation @e[tag=!entity-nohit,distance=..14] reg2 += #damage reg1
scoreboard players operation #damage reg1 /= #2 Num
scoreboard players operation @e[tag=!entity-nohit,distance=..16] reg2 += #damage reg1
scoreboard players operation #damage reg1 /= #2 Num
scoreboard players operation @e[tag=!entity-nohit,distance=..18] reg2 += #damage reg1
scoreboard players operation #damage reg1 /= #2 Num
scoreboard players operation @e[tag=!entity-nohit,distance=..20] reg2 += #damage reg1
scoreboard players operation #damage reg1 /= #2 Num
scoreboard players operation @e[tag=!entity-nohit,distance=..22] reg2 += #damage reg1
scoreboard players operation #damage reg1 /= #2 Num
scoreboard players operation @e[tag=!entity-nohit,distance=..24] reg2 += #damage reg1
scoreboard players operation #damage reg1 /= #2 Num
scoreboard players operation @e[tag=!entity-nohit,distance=..26] reg2 += #damage reg1
scoreboard players operation #damage reg1 /= #2 Num
scoreboard players operation @e[tag=!entity-nohit,distance=..28] reg2 += #damage reg1
scoreboard players operation #damage reg1 /= #2 Num
scoreboard players operation @e[tag=!entity-nohit,distance=..30] reg2 += #damage reg1
scoreboard players operation #damage reg1 /= #2 Num
scoreboard players operation @e[tag=!entity-nohit,distance=..32] reg2 += #damage reg1
execute as @e[tag=!entity-nohit,distance=..32] run function weapon:util/calc-entity-damage

### メッセージ処理 ###
#メッセージを表示(title)
title @p[tag=bomb-owner] times 0 20 20
execute as @e[tag=!entity-nohit,distance=..32,scores={reg1=0},sort=nearest,limit=1] run function weapon:dropping/damage/set-kill-mob-message
execute as @e[tag=!entity-nohit,distance=..32,scores={reg1=0},tag=enemy-target,sort=nearest,limit=1] run function weapon:dropping/damage/set-kill-target-message
execute if entity @e[tag=!entity-nohit,distance=..32,scores={reg1=0}] run title @p[tag=bomb-owner] title {"text":""}
#メッセージを表示(tellraw)
execute if entity @e[tag=!entity-nohit,distance=..32] run function weapon:dropping/damage/hit-message
execute as @e[tag=plane-hitbox,distance=..32,scores={reg1=0}] run function weapon:util/destroy-hitbox-message

#撃墜者/クリアスコアをプラス
execute as @p[tag=bomb-owner] run function weapon:dropping/damage/set-shotdown-score

#ダメージ処理、破壊されたスポナーをキル
execute as @e[tag=!entity-nohit,distance=..32,type=spawner_minecart] store result entity @s MaxNearbyEntities short 1 run scoreboard players get @s reg1
execute as @e[tag=!entity-nohit,distance=..32,type=!spawner_minecart,type=!player] store result entity @s Health short 1 run scoreboard players get @s reg1
execute as @a[tag=!entity-nohit,distance=..32] run scoreboard players operation @s taken-damage -= @s reg1
execute as @a[tag=!entity-nohit,distance=..32] run function weapon:util/damage


kill @e[tag=!entity-nohit,distance=..32,scores={reg1=0},tag=enemy-target,type=spawner_minecart]

#### ダメージ時エフェクト ####
#命中地点にパーティクル
execute at @s[tag=50kg] run particle minecraft:large_smoke ~ ~1 ~ 1.0 1.0 1.0 0.05 500 force
execute at @s[tag=50kg] run particle minecraft:flame ~ ~1 ~ 1 1.2 1 0.03 100 force

execute at @s[tag=60kg] run particle minecraft:large_smoke ~ ~1 ~ 1.0 1.0 1.0 0.05 500 force
execute at @s[tag=60kg] run particle minecraft:flame ~ ~1 ~ 1 1.2 1 0.03 100 force

execute at @s[tag=100kg] run particle minecraft:large_smoke ~ ~1 ~ 1 1 1 0.05 600 force
execute at @s[tag=100kg] run particle minecraft:flame ~ ~1 ~ 1 1.2 1 0.03 120 force

execute at @s[tag=250kg] run particle minecraft:large_smoke ~ ~1 ~ 2 1 2 0.25 2500 force
execute at @s[tag=250kg] run particle minecraft:flame ~ ~1 ~ 2 2.4 2 0.25 500 force

execute at @s[tag=500kg] run particle minecraft:large_smoke ~ ~1 ~ 4 2 4 0.25 5000 force
execute at @s[tag=500kg] run particle minecraft:flame ~ ~1 ~ 4 5 4 0.25 2000 force

execute at @s[tag=800kg] run particle minecraft:large_smoke ~ ~1 ~ 5 1.5 5 0.25 5000 force
execute at @s[tag=800kg] run particle minecraft:flame ~ ~1 ~ 5 6 5 0.25 2000 force

#音
execute at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 1.2 0
execute at @s as @a[tag=bomb-owner] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 1.2 0

#タグ除去
tag @a remove bomb-owner
