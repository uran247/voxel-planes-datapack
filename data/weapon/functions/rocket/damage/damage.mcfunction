#> weapon:rocket/damage/damage
#
# hitしたエンティティにダメージを与える
# 撃墜メッセージやダメージエフェクトを出す
#
# @input
#   executer @e[tag=gun-move-executer]
#   entity @e[tag=hit-weapon]
#
# @within weapon:rocket/rocket-manager
#

#> within
# @within
#   function weapon:rocket/damage/damage
#   function weapon:rocket/damage/**
    #declare tag enemy-target #撃墜するとメッセージが出るターゲットを示す

#> private
# @private
    #declare tag weapon-owner #ロケットを発射したプレイヤーを示す
    #
    #declare score_holder #rocket-id #ロケットのplane-id
    #declare score_holder #damage #与えるダメージ量 半径2増加するごとに半減


#hitした周囲のエンティティにダメージを与える
#撃墜メッセージやダメージエフェクトも出す
#使えるタグ　rocket-move-executer：弾体  rocket-gunner:発射母体
#実行者：弾体

#ロケットのplane-id記憶
scoreboard players operation #rocket-id vp.reg1 = @s vp.plane-id
#ロケットの投下主判定
execute as @a if score @s vp.plane-id = #rocket-id vp.reg1 run tag @s add weapon-owner

#### ダメージ判定 ####
#hpからダメージを引く]
execute as @e[tag=!entity-nohit,distance=..16] run function weapon:util/set-entity-hp
scoreboard players operation #damage vp.reg1 = @s vp.damage
#execute as @e[tag=base,distance=..50] run function weapon:rocket/damage/base-damage
scoreboard players set @e[tag=!entity-nohit,distance=..16] vp.reg2 0
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..1] vp.reg2 += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..2] vp.reg2 += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..3] vp.reg2 += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..4] vp.reg2 += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..5] vp.reg2 += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..6] vp.reg2 += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..7] vp.reg2 += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..8] vp.reg2 += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..9] vp.reg2 += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..10] vp.reg2 += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..11] vp.reg2 += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..12] vp.reg2 += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..13] vp.reg2 += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..14] vp.reg2 += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..15] vp.reg2 += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..16] vp.reg2 += #damage vp.reg1
#execute as @e[tag=!entity-nohit,distance=..16] run function weapon:util/calc-entity-damage
execute as @e[type=!player,tag=!plane-hitbox,tag=!entity-nohit,distance=..16] if score @s vp.input matches 1.. run function weapon:util/calc-entity-damage
execute as @e[type=!player,tag=plane-hitbox,tag=!entity-nohit,distance=..16] if score @s vp.input matches 1.. run function weapon:util/calc-hitbox-damage

#撃墜者/クリアスコアをプラス
#execute as @p[tag=weapon-owner] run function weapon:rocket/damage/set-shotdown-score

#### ダメージ時エフェクト ####
#命中地点にパーティクル
execute if score @s vp.weight matches 0..99 at @s run particle minecraft:large_smoke ^ ^ ^ 1 1 1 0.03 300 force
execute if score @s vp.weight matches 0..99 at @s run particle minecraft:flame ^ ^ ^ 1 1 1 0.03 300 force

#音
execute at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 1.2 0
execute at @s as @a[tag=weapon-owner] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 1.2 0

#タグ除去
tag @a remove weapon-owner
