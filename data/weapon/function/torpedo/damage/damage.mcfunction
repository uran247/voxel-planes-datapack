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
    #declare tag weapon-owner #魚雷を投下したプレイヤーを示す
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
execute as @a if score @s vp.plane-id = #torpedo-id vp.reg1 run tag @s add weapon-owner

#### ダメージ判定 ####
#hpからダメージを引く]
scoreboard players operation #damage vp.reg1 = @s vp.damage
#execute as @e[tag=base,distance=..50] run function weapon:torpedo/damage/base-damage
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

#### ダメージ時エフェクト ####
#命中地点にパーティクル
execute at @s[tag=sailing] run particle minecraft:block{block_state: "minecraft:water"} ^ ^5 ^-5 1 6 1 1 5000 force
execute at @s[tag=!sailing] run particle minecraft:explosion ^ ^ ^ 3 3 3 0 500 force

#音
execute at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 10 0 0
execute at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 10 0.5 0

#タグ除去
tag @a remove weapon-owner
