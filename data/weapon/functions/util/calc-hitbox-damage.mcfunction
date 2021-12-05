#> weapon:util/calc-hitbox-damage
#
# hitboxに対応するストレージのダメージ/防御率分HPをへらす
#
# @input
#   executer @e[type=!player,tag=hit-weapon,tag=plane-hitbox,distance=..20]
#
# @within function weapon:**
#

#> private
# @private
    #declare tag parts-owner #パーツの持ち主を示す
    #declare score_holder #parts-id #パーツのplane-idを示す
    #declare score_holder #current-hp #パーツの現在HPを示す


#持ち主判定
scoreboard players operation #parts-id vp.reg1 = @s vp.plane-id
execute as @a if score @s vp.plane-id = #parts-id vp.reg1 run tag @s add parts-owner
execute as @e[tag=plane-root,distance=..32] if score @s vp.plane-id = #parts-id vp.reg1 run tag @s add parts-owner
execute at @e[tag=plane-root,tag=parts-owner,distance=..32,limit=1] as @e[tag=plane-hitbox,distance=..32] if score @s vp.plane-id = #parts-id vp.reg1 run tag @s add parts-hitbox

#ohmydat呼び出し
execute as @e[tag=plane-root,tag=parts-owner,distance=..32,limit=1] run function oh_my_dat:please

#現在HP取得
execute if entity @s[tag=body] store result score #current-hp vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.body.hp
execute if entity @s[tag=engine] store result score #current-hp vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine.hp
execute if entity @s[tag=engine-r] store result score #current-hp vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-r.hp
execute if entity @s[tag=engine-l] store result score #current-hp vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-l.hp
execute if entity @s[tag=aileron-r] store result score #current-hp vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-r.hp
execute if entity @s[tag=aileron-l] store result score #current-hp vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-l.hp
execute if entity @s[tag=elevator-r] store result score #current-hp vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator-r.hp
execute if entity @s[tag=elevator-l] store result score #current-hp vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator-l.hp
execute if entity @s[tag=radder] store result score #current-hp vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.radder.hp

#ダメージを与える
scoreboard players operation #current-hp vp.reg1 -= #dmg vp.input
execute if score #current-hp vp.reg1 matches ..-1 run scoreboard players set #current-hp vp.reg1 0

execute if entity @s[tag=body] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.body.hp double 1 run scoreboard players get #current-hp vp.reg1
execute if entity @s[tag=engine] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine.hp double 1 run scoreboard players get #current-hp vp.reg1
execute if entity @s[tag=engine-r] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-r.hp double 1 run scoreboard players get #current-hp vp.reg1
execute if entity @s[tag=engine-l] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-l.hp double 1 run scoreboard players get #current-hp vp.reg1
execute if entity @s[tag=aileron-r] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-r.hp double 1 run scoreboard players get #current-hp vp.reg1
execute if entity @s[tag=aileron-l] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-l.hp double 1 run scoreboard players get #current-hp vp.reg1
execute if entity @s[tag=elevator-r] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator-r.hp double 1 run scoreboard players get #current-hp vp.reg1
execute if entity @s[tag=elevator-l] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator-l.hp double 1 run scoreboard players get #current-hp vp.reg1
execute if entity @s[tag=radder] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.radder.hp double 1 run scoreboard players get #current-hp vp.reg1

#機体破壊判定
execute as @e[tag=plane-root,tag=parts-owner,distance=..32] at @s run function weapon:util/parts-health
execute if score #current-hp vp.reg1 matches 0 run title @p[tag=weapon-owner] times 0 20 20
execute if score #current-hp vp.reg1 matches 0 if entity @e[tag=plane-root,tag=parts-owner,tag=destroyed,distance=..32] run title @p[tag=weapon-owner] subtitle {"text":"敵機を撃墜","color":"gold","italic":true}
execute if score #current-hp vp.reg1 matches 0 if entity @e[tag=plane-root,tag=parts-owner,tag=!destroyed,distance=..32] run title @p[tag=weapon-owner] subtitle {"text":"クリティカルヒット","color":"white","italic":true}
execute if score #current-hp vp.reg1 matches 0 run title @p[tag=weapon-owner] title {"text":"","color":"white","italic":true}

#破壊された飛行機の搭乗者へメッセージ
execute if score #current-hp vp.reg1 matches 0 if entity @s[tag=engine] run tellraw @p[tag=parts-owner] [{"text":"エンジンが破壊されました","color":"dark_red"}]
execute if score #current-hp vp.reg1 matches 0 if entity @s[tag=engine-r] run tellraw @p[tag=parts-owner] [{"text":"エンジンが破壊されました","color":"dark_red"}]
execute if score #current-hp vp.reg1 matches 0 if entity @s[tag=engine-l] run tellraw @p[tag=parts-owner] [{"text":"エンジンが破壊されました","color":"dark_red"}]
execute if score #current-hp vp.reg1 matches 0 if entity @s[tag=aileron-r] run tellraw @p[tag=parts-owner] [{"text":"主翼が破壊されました","color":"dark_red"}]
execute if score #current-hp vp.reg1 matches 0 if entity @s[tag=aileron-l] run tellraw @p[tag=parts-owner] [{"text":"主翼が破壊されました","color":"dark_red"}]
execute if score #current-hp vp.reg1 matches 0 if entity @s[tag=radder] run tellraw @p[tag=parts-owner] [{"text":"ラダーが破壊されました","color":"dark_red"}]
execute if score #current-hp vp.reg1 matches 0 if entity @s[tag=elevator-r] run tellraw @p[tag=parts-owner] [{"text":"エレベータが破壊されました","color":"dark_red"}]
execute if score #current-hp vp.reg1 matches 0 if entity @s[tag=elevator-l] run tellraw @p[tag=parts-owner] [{"text":"エレベータが破壊されました","color":"dark_red"}]
execute if score #current-hp vp.reg1 matches 0 if entity @s[tag=body] run tellraw @p[tag=parts-owner] [{"text":"機体が破壊されました","color":"dark_red"}]

#タグ除去
tag @a[tag=parts-owner] remove parts-owner
execute at @e[tag=plane-root,tag=parts-owner,distance=..32,limit=1] run tag @e[tag=parts-hitbox,distance=..32] remove parts-hitbox
tag @e[tag=parts-owner,distance=..32] remove parts-owner
