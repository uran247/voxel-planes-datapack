#召喚
summon minecraft:area_effect_cloud ~ ~1 ~ {NoGravity:1b,Tags:[projectile,aagun,88mm,aagun-init,aagun-nohit,tracer-red,mob-aagun,entity-nohit],Duration:100,CustomName:'{"text":"aagun-r","color":"aqua"}'}

#スコア付与
scoreboard players set @e[tag=aagun-init,distance=..5] vp.age 25
scoreboard players set @e[tag=aagun-init,distance=..5] vp.speed 100
scoreboard players set @e[tag=aagun-init,distance=..5] fuse-height 24000
scoreboard players set @e[tag=aagun-init,distance=..5] vp.damage 40
scoreboard players operation @e[tag=aagun-init,distance=..5] vp.plane-id = @s vp.plane-id
scoreboard players set @e[tag=aagun-init,distance=..5] vp.offsetX 0
scoreboard players set @e[tag=aagun-init,distance=..5] vp.offsetY 0
scoreboard players set @e[tag=aagun-init,distance=..5] vp.offsetZ 0

#発射位置に移動
execute at @s positioned ~ ~ ~ as @e[tag=aagun-init,distance=..5] run function plane:position/calc-offset

#向きを自機方向に向ける
execute as @e[tag=aagun-init,distance=..20,limit=2] rotated as @p positioned as @s run tp @s ~ ~ ~ ~ ~


####ランダムに角度変更####
###Y軸###
#現在の角度取得
execute as @e[tag=aagun-init,distance=..5] store result score @s vp.reg1 run data get entity @s Rotation[0] 1
#-20 - 20の乱数生成
execute as @e[tag=aagun-init,distance=..5] run scoreboard players operation @s vp.reg2 = #rand vp.rand
execute as @e[tag=aagun-init,distance=..5] run scoreboard players operation @s vp.reg2 %= #40 vp.Num
execute as @e[tag=aagun-init,distance=..5] run scoreboard players remove @s vp.reg2 20
#元々の角度に乱数を足す
execute as @e[tag=aagun-init,distance=..5] run scoreboard players operation @s vp.reg1 += @s vp.reg2
#-360 - 360に補正
execute as @e[tag=aagun-init,scores={vp.reg1=..-360},distance=..5] run scoreboard players add @s vp.reg1 360
execute as @e[tag=aagun-init,scores={vp.reg1=360..},distance=..5] run scoreboard players remove @s vp.reg1 360
#代入
execute as @e[tag=aagun-init,distance=..5] store result entity @s Rotation[0] float 1 run scoreboard players get @s vp.reg1

###X軸###
#乱数再生性
function math:rand
#現在の角度取得
execute as @e[tag=aagun-init,distance=..5] store result score @s vp.reg1 run data get entity @s Rotation[1] 1
#-20 - 20の乱数生成
execute as @e[tag=aagun-init,distance=..5] run scoreboard players operation @s vp.reg2 = #rand vp.rand
execute as @e[tag=aagun-init,distance=..5] run scoreboard players operation @s vp.reg2 %= #40 vp.Num
execute as @e[tag=aagun-init,distance=..5] run scoreboard players remove @s vp.reg2 20
#元々の角度に乱数を足す
execute as @e[tag=aagun-init,distance=..5] run scoreboard players operation @s vp.reg1 += @s vp.reg2
#-360 - 360に補正
execute as @e[tag=aagun-init,scores={vp.reg1=..-360},distance=..5] run scoreboard players add @s vp.reg1 360
execute as @e[tag=aagun-init,scores={vp.reg1=360..},distance=..5] run scoreboard players remove @s vp.reg1 360
#代入
execute as @e[tag=aagun-init,distance=..5] store result entity @s Rotation[1] float 1 run scoreboard players get @s vp.reg1

#x,y,z方向の速度スコア化
execute as @e[tag=aagun-init,distance=..5] run function math:vector
execute as @e[tag=aagun-init,distance=..5] run scoreboard players operation @s vp.speedX *= @s vp.speed
execute as @e[tag=aagun-init,distance=..5] run scoreboard players operation @s vp.speedY *= @s vp.speed
execute as @e[tag=aagun-init,distance=..5] run scoreboard players operation @s vp.speedZ *= @s vp.speed
scoreboard players operation @e[tag=aagun-init,distance=..5] vp.speedX /= #10 vp.Num
scoreboard players operation @e[tag=aagun-init,distance=..5] vp.speedY /= #10 vp.Num
scoreboard players operation @e[tag=aagun-init,distance=..5] vp.speedZ /= #10 vp.Num


#発射したならreload時間設定
execute if entity @e[tag=aagun-init,distance=..20] run scoreboard players set @s vp.w1-cooltime 100
