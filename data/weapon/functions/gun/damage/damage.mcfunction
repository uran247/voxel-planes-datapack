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
    #declare tag weapon-owner #銃弾を発射したプレイヤーを示す
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
execute as @a if score @s vp.plane-id = #bullet-id vp.reg1 run tag @s add weapon-owner

#飛行機の当たり判定へのダメージ
scoreboard players operation @e[type=!player,tag=hit-weapon,distance=..20] vp.input = @s vp.damage
execute as @e[type=!player,tag=hit-weapon,tag=plane-hitbox,distance=..20] run function weapon:util/calc-hitbox-damage

#エンティティにダメージ反映
data remove storage voxel-planes:input input
execute store result storage voxel-planes:input input.damage float 1 run scoreboard players get @s vp.damage
execute at @s as @e[tag=!entity-nohit,distance=..0.5] run function weapon:util/damage with storage voxel-planes:input input

#ダメージエフェクト
effect give @e[type=!player,tag=hit-weapon,distance=..20] minecraft:instant_damage 1 126 true

#破壊音
execute at @e[tag=hit-weapon,tag=enemy-target,scores={vp.reg1=0},distance=..20] run playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ 16 0

#tellraw @p [{"nbt":"Tags","entity":"@e[tag=hit-weapon,distance=..20,limit=1]"}] 

#タグ除去
tag @a remove weapon-owner
