#召喚
summon minecraft:area_effect_cloud ~ ~1 ~ {NoGravity:1,Tags:[projectile,aagun,88mm,aagun-init,aagun-nohit,tracer-red,mob-aagun,entity-nohit],Duration:100,CustomName:"{\"text\":\"aagun-r\",\"color\":\"aqua\"}"}

#スコア付与
scoreboard players set @e[tag=aagun-init,distance=..5] age 25
scoreboard players set @e[tag=aagun-init,distance=..5] speed 100
scoreboard players set @e[tag=aagun-init,distance=..5] fuse-height 24000
scoreboard players set @e[tag=aagun-init,distance=..5] damage 40
scoreboard players operation @e[tag=aagun-init,distance=..5] plane-id = @s plane-id
scoreboard players set @e[tag=aagun-init,distance=..5] offsetX 0
scoreboard players set @e[tag=aagun-init,distance=..5] offsetY 0
scoreboard players set @e[tag=aagun-init,distance=..5] offsetZ 0

#発射位置に移動
execute at @s positioned ~ ~ ~ as @e[tag=aagun-init,distance=..5] run function plane:position/calc-offset

#向きを自機方向に向ける
execute as @e[tag=aagun-init,limit=2,distance=..20] rotated as @p positioned as @s run tp @s ~ ~ ~ ~ ~


####ランダムに角度変更####
###Y軸###
#現在の角度取得
execute as @e[tag=aagun-init,distance=..5] store result score @s reg1 run data get entity @s Rotation[0] 1
#-20 - 20の乱数生成
execute as @e[tag=aagun-init,distance=..5] run scoreboard players operation @s reg2 = #rand rand
execute as @e[tag=aagun-init,distance=..5] run scoreboard players operation @s reg2 %= #40 Num
execute as @e[tag=aagun-init,distance=..5] run scoreboard players remove @s reg2 20
#元々の角度に乱数を足す
execute as @e[tag=aagun-init,distance=..5] run scoreboard players operation @s reg1 += @s reg2
#-360 - 360に補正
execute as @e[tag=aagun-init,distance=..5,scores={reg1=..-360}] run scoreboard players add @s reg1 360
execute as @e[tag=aagun-init,distance=..5,scores={reg1=360..}] run scoreboard players remove @s reg1 360
#代入
execute as @e[tag=aagun-init,distance=..5] store result entity @s Rotation[0] float 1 run scoreboard players get @s reg1

###X軸###
#乱数再生性
function math:rand
#現在の角度取得
execute as @e[tag=aagun-init,distance=..5] store result score @s reg1 run data get entity @s Rotation[1] 1
#-20 - 20の乱数生成
execute as @e[tag=aagun-init,distance=..5] run scoreboard players operation @s reg2 = #rand rand
execute as @e[tag=aagun-init,distance=..5] run scoreboard players operation @s reg2 %= #40 Num
execute as @e[tag=aagun-init,distance=..5] run scoreboard players remove @s reg2 20
#元々の角度に乱数を足す
execute as @e[tag=aagun-init,distance=..5] run scoreboard players operation @s reg1 += @s reg2
#-360 - 360に補正
execute as @e[tag=aagun-init,distance=..5,scores={reg1=..-360}] run scoreboard players add @s reg1 360
execute as @e[tag=aagun-init,distance=..5,scores={reg1=360..}] run scoreboard players remove @s reg1 360
#代入
execute as @e[tag=aagun-init,distance=..5] store result entity @s Rotation[1] float 1 run scoreboard players get @s reg1

#x,y,z方向の速度スコア化
execute as @e[tag=aagun-init,distance=..5] run function math:vector
execute as @e[tag=aagun-init,distance=..5] run scoreboard players operation @s speedX *= @s speed
execute as @e[tag=aagun-init,distance=..5] run scoreboard players operation @s speedY *= @s speed
execute as @e[tag=aagun-init,distance=..5] run scoreboard players operation @s speedZ *= @s speed
scoreboard players operation @e[tag=aagun-init,distance=..5] speedX /= #10 Num
scoreboard players operation @e[tag=aagun-init,distance=..5] speedY /= #10 Num
scoreboard players operation @e[tag=aagun-init,distance=..5] speedZ /= #10 Num


#発射したならreload時間設定
execute if entity @e[tag=aagun-init,distance=..20] run scoreboard players set @s w1-reload 100
