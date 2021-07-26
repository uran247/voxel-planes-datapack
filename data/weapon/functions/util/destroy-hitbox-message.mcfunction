#> weapon:util/destroy-hitbox-message
#
# パーツが破壊されたことを持ち主に表示
#
# @input
#   executer @e[tag=plane-hitbox,scores={vp.reg1=0}]
#   position @e[tag=plane-hitbox,scores={vp.reg1=0}]
#
# @within weapon:**
    #declare tag parts-hitbox #パーツのhitboxを示す

#> private
# @private
    #declare tag parts-owner #パーツの持ち主を示す
    #declare score_holder #parts-id #パーツのplane-idを示す

#持ち主判定
scoreboard players operation #parts-id vp.reg1 = @s vp.plane-id
execute as @a if score @s vp.plane-id = #parts-id vp.reg1 run tag @s add parts-owner
execute as @e[tag=plane-root,distance=..30] if score @s vp.plane-id = #parts-id vp.reg1 run tag @s add parts-owner
execute as @e[tag=plane-hitbox,distance=..30] if score @s vp.plane-id = #parts-id vp.reg1 run tag @s add parts-hitbox

#機体破壊判定
execute as @e[tag=plane-root,tag=parts-owner,distance=..30] at @s run function weapon:util/parts-health
execute if entity @e[tag=plane-root,tag=parts-owner,tag=destroyed,distance=..30] run title @p[tag=bullet-owner] subtitle {"text":"敵機を撃墜","color":"gold","italic":true}
execute if entity @e[tag=plane-root,tag=parts-owner,tag=!destroyed,distance=..30] run title @p[tag=bullet-owner] subtitle {"text":"クリティカルヒット","color":"white","italic":true}

#破壊された飛行機の搭乗者へメッセージ
execute if entity @s[tag=engine] run tellraw @p[tag=parts-owner] [{"text":"エンジンが破壊されました","color":"dark_red"}]
execute if entity @s[tag=aileron] run tellraw @p[tag=parts-owner] [{"text":"主翼が破壊されました","color":"dark_red"}]
execute if entity @s[tag=radder] run tellraw @p[tag=parts-owner] [{"text":"ラダーが破壊されました","color":"dark_red"}]
execute if entity @s[tag=elevetor] run tellraw @p[tag=parts-owner] [{"text":"エレベータが破壊されました","color":"dark_red"}]
execute if entity @s[tag=body] run tellraw @p[tag=parts-owner] [{"text":"機体が破壊されました","color":"dark_red"}]

#タグ除去
tag @a[tag=parts-owner] remove parts-owner
tag @e[tag=parts-owner] remove parts-owner
tag @e[tag=parts-hitbox] remove parts-hitbox