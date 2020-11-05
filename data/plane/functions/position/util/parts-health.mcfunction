#航空機のパーツのヘルスチェック、パーツヘルスを体力へ反映
#入力:entity plane-root 航空機パーツ：@e[tag=target-parts] 座標:@s

#パーツのヘルスチェック
execute store result score @s plane-parts if entity @e[tag=target-parts,distance=..30,tag=plane-hitbox]
execute store result score @s radder if entity @e[tag=target-parts,distance=..30,tag=radder]
execute store result score @s elevetor if entity @e[tag=target-parts,distance=..30,tag=elevetor]
execute store result score @s aileron if entity @e[tag=target-parts,distance=..30,tag=aileron]
execute store result score @s engine if entity @e[tag=target-parts,distance=..30,tag=engine]
execute store result score @s body if entity @e[tag=target-parts,distance=..30,tag=body]

#以下条件のどれかを満たしたら墜落タグ
#生存パーツが5個以下　bodyが破損 aileronのどっちかが破損
tag @s remove destroyed
tag @s[scores={aileron=..1}] add destroyed
tag @s[scores={plane-parts=..5}] add destroyed
tag @s[scores={body=..0}] add destroyed

#パーツの体力を体力表示に反映
execute as @e[tag=target-parts,distance=..30,tag=plane-seat,type=minecraft:donkey] store result score @s reg1 run data get entity @s Health
execute as @e[tag=target-parts,distance=..30,tag=plane-hitbox,tag=!cockpit] store result score @s reg1 run data get entity @s Health
scoreboard players set #total-health reg1 0
scoreboard players operation #total-health reg1 += @e[tag=target-parts,distance=..30,tag=plane-hitbox,tag=!cockpit] reg1
scoreboard players operation #total-health reg1 /= #50 Num
execute if score #total-health reg1 matches ..0 run scoreboard players set #total-health reg1 1
execute as @e[tag=target-parts,distance=..30,tag=plane-seat,type=minecraft:donkey] unless score @s reg1 = #total-health reg1 store result entity @s Health float 1 run scoreboard players get #total-health reg1
