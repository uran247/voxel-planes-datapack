#砲の発射
#入力　entity:@e[tag=howitzer]

#召喚
summon minecraft:area_effect_cloud ~ ~1 ~ {NoGravity:1b,Tags:[projectile,he,152mm,he-init,he-nohit,tracer-red,mob-he,entity-nohit],Duration:300,CustomName:'{"text":"he-r","color":"aqua"}'}

#スコア付与
scoreboard players set @e[tag=he-init,distance=..5] vp.age 300
scoreboard players set @e[tag=he-init,distance=..5] vp.speed 75
scoreboard players set @e[tag=he-init,distance=..5] vp.damage 75
scoreboard players set @e[tag=he-init,distance=..5] vp.plane-id -1

#発射位置に移動
#execute at @s positioned ~ ~ ~ as @e[tag=he-init,distance=..5] run function plane:position/calc-offset

#向きを砲の方向に向ける
execute rotated as @s as @e[tag=he-init,distance=..5] run tp @s ~ ~10 ~ ~ ~

####ランダムに角度変更####
###Y軸###
#現在の角度取得
execute as @e[tag=he-init,distance=..5] store result score @s vp.reg1 run data get entity @s Rotation[0] 1
#-20 - 20の乱数生成
execute as @e[tag=he-init,distance=..5] run scoreboard players operation @s vp.reg2 = #rand vp.rand
execute as @e[tag=he-init,distance=..5] run scoreboard players operation @s vp.reg2 %= #40 vp.Num
execute as @e[tag=he-init,distance=..5] run scoreboard players remove @s vp.reg2 20
#元々の角度に乱数を足す
execute as @e[tag=he-init,distance=..5] run scoreboard players operation @s vp.reg1 += @s vp.reg2
#-360 - 360に補正
execute as @e[tag=he-init,scores={vp.reg1=..-360},distance=..5] run scoreboard players add @s vp.reg1 360
execute as @e[tag=he-init,scores={vp.reg1=360..},distance=..5] run scoreboard players remove @s vp.reg1 360
#代入
execute as @e[tag=he-init,distance=..5] store result entity @s Rotation[0] float 1 run scoreboard players get @s vp.reg1

###X軸###
#乱数再生性
function math:rand
#現在の角度取得
execute as @e[tag=he-init,distance=..5] store result score @s vp.reg1 run data get entity @s Rotation[1] 1
#-10 - 10の乱数生成
execute as @e[tag=he-init,distance=..5] run scoreboard players operation @s vp.reg2 = #rand vp.rand
execute as @e[tag=he-init,distance=..5] run scoreboard players operation @s vp.reg2 %= #10 vp.Num
execute as @e[tag=he-init,distance=..5] run scoreboard players remove @s vp.reg2 10
#元々の角度に乱数を足す
execute as @e[tag=he-init,distance=..5] run scoreboard players operation @s vp.reg1 += @s vp.reg2
#-360 - 360に補正
execute as @e[tag=he-init,scores={vp.reg1=..-360},distance=..5] run scoreboard players add @s vp.reg1 360
execute as @e[tag=he-init,scores={vp.reg1=360..},distance=..5] run scoreboard players remove @s vp.reg1 360
#代入
execute as @e[tag=he-init,distance=..5] store result entity @s Rotation[1] float 1 run scoreboard players get @s vp.reg1

#x,y,z方向の速度スコア化
execute as @e[tag=he-init,distance=..5] run function math:vector
execute as @e[tag=he-init,distance=..5] run scoreboard players operation @s vp.speedX *= @s vp.speed
execute as @e[tag=he-init,distance=..5] run scoreboard players operation @s vp.speedY *= @s vp.speed
execute as @e[tag=he-init,distance=..5] run scoreboard players operation @s vp.speedZ *= @s vp.speed
scoreboard players operation @e[tag=he-init,distance=..5] vp.speedX /= #10 vp.Num
scoreboard players operation @e[tag=he-init,distance=..5] vp.speedY /= #10 vp.Num
scoreboard players operation @e[tag=he-init,distance=..5] vp.speedZ /= #10 vp.Num

#発射したならreload時間設定
execute if entity @e[tag=he-init,distance=..20] run scoreboard players set @s vp.w1-cooltime 300

tag @e[tag=he-init,distance=..5] remove he-init