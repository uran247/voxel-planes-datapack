#> weapon:util/hit-hitbox-effect
#
# hitboxにダメージを受けた機体のパイロットにダメージエフェクトを出す
#
# @input
#   executer @e[tag=hit-weapon,tag=plane-hitbox,tag=!cockpit]
#
# @within function weapon:**
#

#> private
# @private
    #declare tag parts-owner #hitboxにダメージを受けた機体のパイロットを示す
    #
    #declare score_holder #parts-id #パーツのplane-idを示す

#持ち主判定
scoreboard players operation #parts-id vp.reg1 = @s vp.plane-id
execute as @a if score @s vp.plane-id = #parts-id vp.reg1 run tag @s add parts-owner

#damage effect
effect give @p[tag=parts-owner] minecraft:instant_damage 1 126

#タグ除去
tag @a[tag=parts-owner] remove parts-owner