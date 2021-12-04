#> weapon:gun/damage/damage
#
# hitしたエンティティにダメージを与える
# 撃墜メッセージやダメージエフェクトを出す
#
# @input
#   executer @e[tag=gun-move-executer]
#   entity @e[tag=hit-weapon]
#
# @within weapon:gun/gun-manager
#

#> within
# @within
#   function weapon:gun/damage/damage
#   function weapon:gun/damage/**
#   function weapon:util/**
    #declare tag enemy-target #撃墜するとメッセージが出るターゲットを示す
    #declare tag bullet-owner #銃弾を発射したプレイヤーを示す
    #declare score_holder #dmg #銃弾のダメージ

#> private
# @private
    #
    #declare score_holder #bullet-id #銃弾のplane-id

# 入力　tag=gun-move-executer：弾体  tag=gunner:発射母体 tag=hit-weapon 命中したエンティティ
# 実行者：弾体

#弾丸のplane-id記憶
scoreboard players operation #bullet-id vp.reg1 = @s vp.plane-id
#射手判定
execute as @a if score @s vp.plane-id = #bullet-id vp.reg1 run tag @s add bullet-owner

#通常エンティティのダメージ後の体力計算
execute as @e[tag=hit-weapon,tag=!plane-hitbox,distance=..20] run function weapon:util/set-entity-hp
scoreboard players operation @e[type=!player,tag=hit-weapon,tag=!plane-hitbox,distance=..20] vp.reg2 = @s vp.damage
execute as @e[type=!player,tag=hit-weapon,tag=!plane-hitbox,distance=..20] run function weapon:util/calc-entity-damage

#hit-boxのダメージ後の体力計算
execute if entity @e[type=!player,tag=hit-weapon,tag=plane-hitbox,distance=..20] run scoreboard players operation #dmg vp.input = @s vp.damage
execute as @e[type=!player,tag=hit-weapon,tag=plane-hitbox,distance=..20] run function weapon:util/calc-hitbox-damage

#メッセージ表示(tellraw)とダメージエフェクト
execute as @e[tag=hit-weapon,tag=plane-hitbox,tag=!cockpit,distance=..20] run function weapon:util/hit-hitbox-effect

#撃墜者/クリアスコアをプラス
#execute as @p[tag=bullet-owner] run function weapon:gun/damage/set-shotdown-score

#パイロットにダメージ判定
execute if entity @e[tag=hit-weapon,tag=cockpit,distance=..20] run function weapon:util/pilot-damage

#飛行機に乗ってないプレイヤーにダメージ判定
scoreboard players operation @p[tag=hit-weapon,distance=..20] vp.taken-damage = @s vp.damage
execute as @p[tag=hit-weapon,distance=..20] run function weapon:util/damage

#ダメージエフェクト
effect give @e[type=!player,tag=hit-weapon,distance=..20] minecraft:instant_damage 1 126 true

#スコアをHPに反映(cockpitにはダメージを与えない)
execute as @e[type=!spawner_minecart,tag=hit-weapon,tag=!cockpit,distance=..20] store result entity @s Health float 1 run scoreboard players get @s vp.reg1
execute as @e[type=spawner_minecart,tag=hit-weapon,distance=..20] store result entity @s MaxNearbyEntities float 1 run scoreboard players get @s vp.reg1

#破壊音
execute at @e[tag=hit-weapon,tag=enemy-target,scores={vp.reg1=0},distance=..20] run playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ 16 0

#破壊されたスポナーをキル
kill @e[tag=hit-weapon,tag=enemy-target,scores={vp.reg1=0},distance=..20]

#tellraw @p [{"nbt":"Tags","entity":"@e[tag=hit-weapon,distance=..20,limit=1]"}] 

#タグ除去
tag @a remove bullet-owner
