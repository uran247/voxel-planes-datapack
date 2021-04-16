#> weapon:torpedo/damage/damage
#
# hitしたエンティティにダメージを与える
# 撃墜メッセージやダメージエフェクトを出す
#
# @input
#   executer @e[tag=gun-move-executer]
#   entity @e[tag=hit-weapon]
#
# @within weapon:torpedo/torpedo-manager
#

#> within
# @within
#   function weapon:torpedo/damage/damage
#   function weapon:torpedo/damage/**
    #declare tag enemy-target #撃墜するとメッセージが出るターゲットを示す

#> private
# @private
    #declare tag torpedo-owner #魚雷を投下したプレイヤーを示す
    #
    #declare score_holder #torpedo-id #魚雷のplane-id
    #declare score_holder #damage #与えるダメージ量 半径2増加するごとに半減

#hitした周囲のエンティティにダメージを与える
#撃墜メッセージやダメージエフェクトも出す
#使えるタグ　torpedo-move-executer：弾体  torpedoer:発射母体
#実行者：弾体

#爆弾のplane-id記憶
scoreboard players operation #torpedo-id vp.reg1 = @s vp.plane-id
#爆弾の投下主判定
execute as @a if score @s vp.plane-id = #torpedo-id vp.reg1 run tag @s add torpedo-owner

#### ダメージ判定 ####
#hpからダメージを引く]
execute as @e[tag=!entity-nohit,distance=..16] run function weapon:util/set-entity-hp
scoreboard players operation #damage vp.reg1 = @s vp.damage

#execute as @e[tag=base,distance=..50] run function weapon:torpedo/damage/base-damage
scoreboard players set @e[tag=!entity-nohit,distance=..32] vp.reg2 0
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..2] vp.reg2 += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..4] vp.reg2 += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..6] vp.reg2 += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..8] vp.reg2 += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..10] vp.reg2 += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..12] vp.reg2 += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..14] vp.reg2 += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..16] vp.reg2 += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..18] vp.reg2 += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..20] vp.reg2 += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..22] vp.reg2 += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..24] vp.reg2 += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..26] vp.reg2 += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..28] vp.reg2 += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..30] vp.reg2 += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..32] vp.reg2 += #damage vp.reg1
execute as @e[tag=!entity-nohit,distance=..32] run function weapon:util/calc-entity-damage


### メッセージ処理 ###
#メッセージを表示(title)
title @p[tag=torpedo-owner] times 0 20 20
#execute as @e[tag=!entity-nohit,tag=!enemy-target,scores={vp.reg1=0},distance=..16,sort=nearest,limit=1] run function weapon:torpedo/damage/set-kill-mob-message
#execute as @e[tag=enemy-target,tag=!entity-nohit,scores={vp.reg1=0},distance=..16,sort=nearest,limit=1] run function weapon:torpedo/damage/set-kill-target-message
execute if entity @e[tag=!entity-nohit,scores={vp.reg1=0},distance=..16] run title @p[tag=torpedo-owner] title {"text":""}
#メッセージを表示(tellraw)
#execute if entity @e[tag=!entity-nohit,distance=..16] run function weapon:torpedo/damage/hit-message
execute as @e[tag=plane-hitbox,scores={vp.reg1=0},distance=..16] run function weapon:util/destroy-hitbox-message

#撃墜者/クリアスコアをプラス
#execute as @p[tag=torpedo-owner] run function weapon:torpedo/damage/set-shotdown-score

#ダメージ処理、破壊されたスポナーをキル
execute as @e[type=spawner_minecart,tag=!entity-nohit,distance=..16] store result entity @s MaxNearbyEntities short 1 run scoreboard players get @s vp.reg1
execute as @e[type=!spawner_minecart,type=!player,tag=!entity-nohit,distance=..16] store result entity @s Health short 1 run scoreboard players get @s vp.reg1
execute as @a[tag=!entity-nohit,distance=..16] run scoreboard players operation @s vp.taken-damage -= @s vp.reg1
execute as @a[tag=!entity-nohit,distance=..16] run function weapon:util/damage
#kill @e[type=spawner_minecart,tag=enemy-target,tag=!entity-nohit,scores={vp.reg1=0},distance=..16]

#### ダメージ時エフェクト ####
#命中地点にパーティクル
#execute at @s[tag=sailing] run particle minecraft:explosion ^ ^ ^ 3 3 3 0 500 force
execute at @s[tag=sailing] run particle minecraft:block minecraft:water ^ ^5 ^-5 1 6 1 1 5000 force
execute at @s[tag=!sailing] run particle minecraft:explosion ^ ^ ^ 3 3 3 0 500 force
execute at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 10 0 0
execute at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 10 0.5 0

#タグ除去
tag @a remove torpedo-owner
