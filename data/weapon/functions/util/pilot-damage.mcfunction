#> weapon:util/pilot-damage
#
# pilotにダメージ,cockpitエンティティへのダメージを無効化
#
# @input
#   executer @e[tag=gun-move-executer]
#   entity @e[tag=hit-weapon,tag=cockpit]
#
# @within weapon:**
#

#> private
# @private
    #declare tag parts-owner #パーツの持ち主を示す
    #
    #declare score_holder #parts-id #パーツのplane-idを示す

#持ち主判定
scoreboard players operation #parts-id vp.reg1 = @e[tag=hit-weapon,tag=cockpit,distance=..20] vp.plane-id
execute as @a if score @s vp.plane-id = #parts-id vp.reg1 run tag @s add parts-owner

#ダメージ
scoreboard players operation @p[tag=parts-owner] vp.taken-damage = @s vp.damage
execute as @p[tag=parts-owner] run function weapon:util/damage

#cockpitエンティティへのダメージを無効化
scoreboard players set @e[tag=hit-weapon,tag=cockpit,distance=..20] vp.reg1 80

#タグ除去
tag @a[tag=parts-owner] remove parts-owner