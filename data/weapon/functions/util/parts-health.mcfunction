#> weapon:util/parts-health
#
# 航空機のパーツのヘルスチェック、パーツヘルスを体力へ反映
#
# @input
#   executer @e[tag=plane-root]
#   position @e[tag=plane-root]
#
# @within
#   function plane:position/position
#   function weapon:util/destroy-hitbox-message
#
# @private
    #declare score_holder #total-health #パーツの合計体力を示す

#パーツのヘルスチェック
execute store result score @s vp.plane-parts if entity @e[tag=parts-hitbox,tag=plane-hitbox,scores={vp.reg1=1..},distance=..30]
execute store result score @s vp.radder if entity @e[tag=parts-hitbox,tag=radder,scores={vp.reg1=1..},distance=..30]
execute store result score @s vp.elevetor if entity @e[tag=parts-hitbox,tag=elevetor,scores={vp.reg1=1..},distance=..30]
execute store result score @s vp.aileron if entity @e[tag=parts-hitbox,tag=aileron,scores={vp.reg1=1..},distance=..30]
execute store result score @s vp.engine if entity @e[tag=parts-hitbox,tag=engine,scores={vp.reg1=1..},distance=..30]
execute store result score @s vp.body if entity @e[tag=parts-hitbox,tag=body,scores={vp.reg1=1..},distance=..30]

#以下条件のどれかを満たしたら墜落タグ
#生存パーツが5個以下　bodyが破損 aileronのどっちかが破損
tag @s remove destroyed
tag @s[scores={vp.aileron=..1}] add destroyed
tag @s[scores={vp.plane-parts=..5}] add destroyed
tag @s[scores={vp.body=..0}] add destroyed
