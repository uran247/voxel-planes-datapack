#hitした周囲のエンティティにダメージを与える
#撃墜メッセージやダメージエフェクトも出す
#使えるタグ　rocket-move-executer：弾体  rocket-gunner:発射母体
#実行者：弾体

#ロケットのplane-id記憶
scoreboard players operation #rocket-id reg1 = @s plane-id
#ロケットの投下主判定
execute as @a if score @s plane-id = #rocket-id reg1 run tag @s add rocket-owner

#### ダメージ判定 ####
#hpからダメージを引く]
execute as @e[tag=!entity-nohit,distance=..32] run function weapon:util/set-entity-hp
scoreboard players operation #damage reg1 = @s damage
execute as @e[tag=base,distance=..50] run function weapon:rocket/damage/base-damage
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
title @p[tag=rocket-owner] times 0 20 20
execute as @e[tag=!entity-nohit,distance=..32,scores={reg1=0},sort=nearest,limit=1] run function weapon:rocket/damage/set-kill-mob-message
execute as @e[tag=!entity-nohit,distance=..32,scores={reg1=0},tag=enemy-target,sort=nearest,limit=1] run function weapon:rocket/damage/set-kill-target-message
execute if entity @e[tag=!entity-nohit,distance=..32,scores={reg1=0}] run title @p[tag=rocket-owner] title {"text":""}
#メッセージを表示(tellraw)
execute if entity @e[tag=!entity-nohit,distance=..32] run function weapon:rocket/damage/hit-message
execute as @e[tag=plane-hitbox,distance=..32,scores={reg1=0}] run function weapon:util/destroy-hitbox-message

#撃墜者/クリアスコアをプラス
execute as @p[tag=rocket-owner] run function weapon:rocket/damage/set-shotdown-score

#ダメージ処理、破壊されたスポナーをキル
execute as @e[tag=!entity-nohit,distance=..32,type=spawner_minecart] store result entity @s MaxNearbyEntities short 1 run scoreboard players get @s reg1
execute as @e[tag=!entity-nohit,distance=..32,type=!spawner_minecart,type=!player] store result entity @s Health short 1 run scoreboard players get @s reg1
execute as @a[tag=!entity-nohit,distance=..32] run scoreboard players operation @s taken-damage -= @s reg1
execute as @a[tag=!entity-nohit,distance=..32] run function weapon:util/damage


kill @e[tag=!entity-nohit,distance=..32,scores={reg1=0},tag=enemy-target,type=spawner_minecart]

#### ダメージ時エフェクト ####
#命中地点にパーティクル
execute at @s[tag=10kg] run particle minecraft:large_smoke ^ ^ ^ 1 1 1 0.03 300 force
execute at @s[tag=10kg] run particle minecraft:flame ^ ^ ^ 1 1 1 0.03 300 force
execute at @s[tag=50kg] run particle minecraft:explosion ^ ^ ^ 1 1 1 0 100 force
execute at @s[tag=60kg] run particle minecraft:explosion ^ ^ ^ 1 1 1 0 120 force
execute at @s[tag=250kg] run particle minecraft:explosion ^ ^ ^ 3 3 3 0 500 force

#音
execute at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 1.2 0
execute at @s as @a[tag=rocket-owner] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 1.2 0

#タグ除去
tag @a remove rocket-owner
