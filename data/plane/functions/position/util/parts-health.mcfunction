#> plane:position/util/parts-health
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
execute store result score @s vp.plane-parts if entity @e[tag=target-parts,tag=plane-hitbox,distance=..30]
execute store result score @s vp.radder if entity @e[tag=target-parts,tag=radder,distance=..30]
execute store result score @s vp.elevetor if entity @e[tag=target-parts,tag=elevetor,distance=..30]
execute store result score @s vp.aileron if entity @e[tag=target-parts,tag=aileron,distance=..30]
execute store result score @s vp.engine if entity @e[tag=target-parts,tag=engine,distance=..30]
execute store result score @s vp.body if entity @e[tag=target-parts,tag=body,distance=..30]

#以下条件のどれかを満たしたら墜落タグ
#生存パーツが5個以下　bodyが破損 aileronのどっちかが破損
tag @s remove destroyed
tag @s[scores={vp.aileron=..1}] add destroyed
tag @s[scores={vp.plane-parts=..5}] add destroyed
tag @s[scores={vp.body=..0}] add destroyed

#パーツの体力を体力表示に反映
execute as @e[type=minecraft:donkey,tag=target-parts,tag=plane-seat,distance=..30] store result score @s vp.reg1 run data get entity @s Health
execute as @e[tag=target-parts,tag=plane-hitbox,tag=!cockpit,distance=..30] store result score @s vp.reg1 run data get entity @s Health
scoreboard players set #total-health vp.reg1 0
scoreboard players operation #total-health vp.reg1 += @e[tag=target-parts,tag=plane-hitbox,tag=!cockpit,distance=..30] vp.reg1
scoreboard players operation #total-health vp.reg1 /= #50 vp.Num
execute if score #total-health vp.reg1 matches ..0 run scoreboard players set #total-health vp.reg1 1
execute as @e[type=minecraft:donkey,tag=target-parts,tag=plane-seat,distance=..30] unless score @s vp.reg1 = #total-health vp.reg1 store result entity @s Health float 1 run scoreboard players get #total-health vp.reg1
