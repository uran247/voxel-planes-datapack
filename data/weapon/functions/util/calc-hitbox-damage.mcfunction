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

#ダメージを与える
execute if entity @s[tag=body] store result score #current-hp vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.body.hp
execute if entity @s[tag=engine] store result score #current-hp vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine.hp
execute if entity @s[tag=engine-r] store result score #current-hp vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-r.hp
execute if entity @s[tag=engine-l] store result score #current-hp vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-l.hp
execute if entity @s[tag=aileron-r] store result score #current-hp vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-r.hp
execute if entity @s[tag=aileron-l] store result score #current-hp vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-l.hp
execute if entity @s[tag=elevator-r] store result score #current-hp vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator-r.hp
execute if entity @s[tag=elevator-l] store result score #current-hp vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator-l.hp
execute if entity @s[tag=radder] store result score #current-hp vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.radder.hp

scoreboard players operation #current-hp vp.reg1 -= #dmg vp.input

execute if entity @s[tag=body] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.body.hp double 1 run scoreboard players get #current-hp vp.reg1
execute if entity @s[tag=engine] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine.hp double 1 run scoreboard players get #current-hp vp.reg1
execute if entity @s[tag=engine-r] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-r.hp double 1 run scoreboard players get #current-hp vp.reg1
execute if entity @s[tag=engine-l] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-l.hp double 1 run scoreboard players get #current-hp vp.reg1
execute if entity @s[tag=aileron-r] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-r.hp double 1 run scoreboard players get #current-hp vp.reg1
execute if entity @s[tag=aileron-l] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-l.hp double 1 run scoreboard players get #current-hp vp.reg1
execute if entity @s[tag=elevator-r] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator-r.hp double 1 run scoreboard players get #current-hp vp.reg1
execute if entity @s[tag=elevator-l] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator-l.hp double 1 run scoreboard players get #current-hp vp.reg1
execute if entity @s[tag=radder] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.radder.hp double 1 run scoreboard players get #current-hp vp.reg1

#tellraw @p [{"nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].status","storage":"oh_my_dat:"}]

#タグ除去
tag @a[tag=parts-owner] remove parts-owner
execute at @e[tag=plane-root,tag=parts-owner,distance=..32,limit=1] run tag @e[tag=parts-hitbox,distance=..32] remove parts-hitbox
tag @e[tag=parts-owner,distance=..32] remove parts-owner
