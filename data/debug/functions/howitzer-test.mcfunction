#砲の発射
#入力　entity:@e[tag=howitzer]

#召喚
summon minecraft:area_effect_cloud ~ ~1 ~ {NoGravity:1,Tags:[projectile,he,152mm,he-init,he-nohit,tracer-red,mob-he,entity-nohit],Duration:300,CustomName:"{\"text\":\"he-r\",\"color\":\"aqua\"}"}

#スコア付与
scoreboard players set @e[tag=he-init,distance=..5] age 300
scoreboard players set @e[tag=he-init,distance=..5] speed 75
scoreboard players set @e[tag=he-init,distance=..5] damage 75
scoreboard players set @e[tag=he-init,distance=..5] plane-id -1

#発射位置に移動
#execute at @s positioned ~ ~ ~ as @e[tag=he-init,distance=..5] run function plane:position/calc-offset

#向きを砲の方向に向ける
execute rotated as @s as @e[tag=he-init,distance=..5] run tp @s ~ ~10 ~ ~ ~

####ランダムに角度変更####
###Y軸###
#現在の角度取得
execute as @e[tag=he-init,distance=..5] store result score @s reg1 run data get entity @s Rotation[0] 1
#-20 - 20の乱数生成
execute as @e[tag=he-init,distance=..5] run scoreboard players operation @s reg2 = #rand rand
execute as @e[tag=he-init,distance=..5] run scoreboard players operation @s reg2 %= #40 Num
execute as @e[tag=he-init,distance=..5] run scoreboard players remove @s reg2 20
#元々の角度に乱数を足す
execute as @e[tag=he-init,distance=..5] run scoreboard players operation @s reg1 += @s reg2
#-360 - 360に補正
execute as @e[tag=he-init,distance=..5,scores={reg1=..-360}] run scoreboard players add @s reg1 360
execute as @e[tag=he-init,distance=..5,scores={reg1=360..}] run scoreboard players remove @s reg1 360
#代入
execute as @e[tag=he-init,distance=..5] store result entity @s Rotation[0] float 1 run scoreboard players get @s reg1

###X軸###
#乱数再生性
function math:rand
#現在の角度取得
execute as @e[tag=he-init,distance=..5] store result score @s reg1 run data get entity @s Rotation[1] 1
#-10 - 10の乱数生成
execute as @e[tag=he-init,distance=..5] run scoreboard players operation @s reg2 = #rand rand
execute as @e[tag=he-init,distance=..5] run scoreboard players operation @s reg2 %= #10 Num
execute as @e[tag=he-init,distance=..5] run scoreboard players remove @s reg2 10
#元々の角度に乱数を足す
execute as @e[tag=he-init,distance=..5] run scoreboard players operation @s reg1 += @s reg2
#-360 - 360に補正
execute as @e[tag=he-init,distance=..5,scores={reg1=..-360}] run scoreboard players add @s reg1 360
execute as @e[tag=he-init,distance=..5,scores={reg1=360..}] run scoreboard players remove @s reg1 360
#代入
execute as @e[tag=he-init,distance=..5] store result entity @s Rotation[1] float 1 run scoreboard players get @s reg1

#x,y,z方向の速度スコア化
execute as @e[tag=he-init,distance=..5] run function math:vector
execute as @e[tag=he-init,distance=..5] run scoreboard players operation @s speedX *= @s speed
execute as @e[tag=he-init,distance=..5] run scoreboard players operation @s speedY *= @s speed
execute as @e[tag=he-init,distance=..5] run scoreboard players operation @s speedZ *= @s speed
scoreboard players operation @e[tag=he-init,distance=..5] speedX /= #10 Num
scoreboard players operation @e[tag=he-init,distance=..5] speedY /= #10 Num
scoreboard players operation @e[tag=he-init,distance=..5] speedZ /= #10 Num

#発射したならreload時間設定
execute if entity @e[tag=he-init,distance=..20] run scoreboard players set @s w1-reload 300

tag @e[tag=he-init,distance=..5] remove he-init