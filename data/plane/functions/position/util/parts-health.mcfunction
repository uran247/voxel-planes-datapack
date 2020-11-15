#航空機のパーツのヘルスチェック、パーツヘルスを体力へ反映
#入力:entity plane-root 航空機パーツ：@e[tag=target-parts] 座標:@s

#パーツのヘルスチェック
execute store result score @s vp.plane-parts if entity @e[tag=target-parts,distance=..30,tag=plane-hitbox]
execute store result score @s vp.radder if entity @e[tag=target-parts,distance=..30,tag=radder]
execute store result score @s vp.elevetor if entity @e[tag=target-parts,distance=..30,tag=elevetor]
execute store result score @s vp.aileron if entity @e[tag=target-parts,distance=..30,tag=aileron]
execute store result score @s vp.engine if entity @e[tag=target-parts,distance=..30,tag=engine]
execute store result score @s vp.body if entity @e[tag=target-parts,distance=..30,tag=body]

#以下条件のどれかを満たしたら墜落タグ
#生存パーツが5個以下　bodyが破損 aileronのどっちかが破損
tag @s remove destroyed
tag @s[scores={vp.aileron=..1}] add destroyed
tag @s[scores={vp.plane-parts=..5}] add destroyed
tag @s[scores={vp.body=..0}] add destroyed

#パーツの体力を体力表示に反映
execute as @e[tag=target-parts,distance=..30,tag=plane-seat,type=minecraft:donkey] store result score @s vp.reg1 run data get entity @s Health
execute as @e[tag=target-parts,distance=..30,tag=plane-hitbox,tag=!cockpit] store result score @s vp.reg1 run data get entity @s Health
scoreboard players set #total-health vp.reg1 0
scoreboard players operation #total-health vp.reg1 += @e[tag=target-parts,distance=..30,tag=plane-hitbox,tag=!cockpit] vp.reg1
scoreboard players operation #total-health vp.reg1 /= #50 vp.Num
execute if score #total-health vp.reg1 matches ..0 run scoreboard players set #total-health vp.reg1 1
execute as @e[tag=target-parts,distance=..30,tag=plane-seat,type=minecraft:donkey] unless score @s vp.reg1 = #total-health vp.reg1 store result entity @s Health float 1 run scoreboard players get #total-health vp.reg1
