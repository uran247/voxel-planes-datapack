#> weapon:dropping/damage/damage
#
# hitしたエンティティにダメージを与える
# 撃墜メッセージやダメージエフェクトを出す
#
# @input
#   executer @e[tag=gun-move-executer]
#
# @within weapon:dropping/dropping-manager
#

#> within
# @within
#   function weapon:dropping/damage/damage
#   function weapon:dropping/damage/**
    #declare tag enemy-target #撃墜するとメッセージが出るターゲットを示す

#> private
# @private
    #declare tag weapon-owner #爆弾を投下したプレイヤーを示す
    #
    #declare score_holder #bomb-id #爆弾のplane-id
    #declare score_holder #damage #与えるダメージ量 半径2増加するごとに半減


#hitした周囲のエンティティにダメージを与える
#撃墜メッセージやダメージエフェクトも出す
#使えるタグ　bomb-move-executer：弾体  bomber:発射母体
#実行者：弾体

#爆弾のplane-id記憶
scoreboard players operation #bomb-id vp.reg1 = @s vp.plane-id
#爆弾の投下主判定
execute as @a if score @s vp.plane-id = #bomb-id vp.reg1 run tag @s add weapon-owner

#### ダメージ判定 ####
#hpからダメージを引く
scoreboard players operation #damage vp.reg1 = @s vp.damage
#execute as @e[tag=base,distance=..50] run function weapon:dropping/damage/base-damage
scoreboard players set @e[tag=!entity-nohit,distance=..32] vp.input 0
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..2] vp.input += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..4] vp.input += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..6] vp.input += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..8] vp.input += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..10] vp.input += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..12] vp.input += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..14] vp.input += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..16] vp.input += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..18] vp.input += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..20] vp.input += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..22] vp.input += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..24] vp.input += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..26] vp.input += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..28] vp.input += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..30] vp.input += #damage vp.reg1
scoreboard players operation #damage vp.reg1 /= #2 vp.Num
scoreboard players operation @e[tag=!entity-nohit,distance=..32] vp.input += #damage vp.reg1

#飛行機当たり判定へのダメージ
execute as @e[type=!player,tag=plane-hitbox,tag=!entity-nohit,distance=..32] if score @s vp.input matches 1.. run function weapon:util/calc-hitbox-damage

# entityへのダメージ
execute as @e[tag=!plane-hitbox,tag=!entity-nohit,distance=..32] run function weapon:util/blast-damage

#撃墜者/クリアスコアをプラス
#execute as @p[tag=weapon-owner] run function weapon:dropping/damage/set-shotdown-score

#### ダメージ時エフェクト ####
#命中地点にパーティクル
execute if score @s vp.weight matches 0..99 at @s run particle minecraft:large_smoke ~ ~1 ~ 1.0 1.0 1.0 0.05 500 force
execute if score @s vp.weight matches 0..99 at @s run particle minecraft:flame ~ ~1 ~ 1 1.2 1 0.03 100 force

execute if score @s vp.weight matches 100..199 at @s run particle minecraft:large_smoke ~ ~1 ~ 1 1 1 0.05 600 force
execute if score @s vp.weight matches 100..199 at @s run particle minecraft:flame ~ ~1 ~ 1 1.2 1 0.03 120 force

execute if score @s vp.weight matches 200..399 at @s run particle minecraft:large_smoke ~ ~1 ~ 2 1 2 0.25 2500 force
execute if score @s vp.weight matches 200..399 at @s run particle minecraft:flame ~ ~1 ~ 2 2.4 2 0.25 500 force

execute if score @s vp.weight matches 400..799 at @s run particle minecraft:large_smoke ~ ~1 ~ 4 2 4 0.25 5000 force
execute if score @s vp.weight matches 400..799 at @s run particle minecraft:flame ~ ~1 ~ 4 5 4 0.25 2000 force

execute if score @s vp.weight matches 800..1499 at @s run particle minecraft:large_smoke ~ ~1 ~ 5 1.5 5 0.25 5000 force
execute if score @s vp.weight matches 800..1499 at @s run particle minecraft:flame ~ ~1 ~ 5 6 5 0.25 2000 force

#音
execute at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 1.2 0
execute at @s as @a[tag=weapon-owner] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 1.2 0

#タグ除去
tag @a remove weapon-owner
