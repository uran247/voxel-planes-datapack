#7.7mm前部機銃を使用 ki21
#実行者：機体

#召喚
summon minecraft:area_effect_cloud ~ ~ ~ {NoGravity:1,Tags:[projectile,gun,7p7mm,gun-init,tracer-lightblue,entity-nohit,offset-base],Duration:20}

#スコア付与
scoreboard players set @e[tag=gun-init,distance=..5] vp.speed 100
scoreboard players set @e[tag=gun-init,distance=..5] vp.damage 2
scoreboard players operation @e[tag=gun-init,distance=..5] vp.plane-id = @s vp.plane-id
scoreboard players set @e[tag=gun-init,distance=..5] vp.offsetX 0
scoreboard players set @e[tag=gun-init,distance=..5] vp.offsetY -550
scoreboard players set @e[tag=gun-init,distance=..5] vp.offsetZ -3950

#5発目の弾なら曳光弾化
scoreboard players operation @s vp.reg1 = @s vp.ammunition4
scoreboard players operation @s vp.reg1 %= #5 vp.Num
execute if score @s vp.reg1 matches 0 run tag @e[tag=gun-init,distance=..10] add tracer

#発射位置に移動
function plane:position/util/calc-triangle-ratio
scoreboard players operation #sin vp.reg1 = #sin vp.return
scoreboard players operation #cos vp.reg1 = #cos vp.return
execute at @s as @e[tag=gun-init,distance=..5] run function plane:position/util/calc-displacement
execute at @s as @e[tag=gun-init,distance=..5] run function plane:position/calc-offset
execute at @s as @e[tag=gun-init,distance=..5] run function plane:position/util/move-parts

#向きをターゲット方向に向ける
execute as @e[tag=gun-init,limit=2,distance=..20] at @s run tp @s ~ ~ ~ facing entity @e[tag=rear-gun-target,distance=..32,limit=1]


####ランダムに角度変更####
###Y軸###
#現在の角度取得(3600 - -3600)
execute as @e[tag=gun-init,distance=..20] store result score #angle-Y vp.reg1 run data get entity @s Rotation[0] 10
#-50 - 50の乱数生成
execute as @e[tag=gun-init,distance=..20] run scoreboard players operation #random vp.reg1 = #rand vp.rand
execute as @e[tag=gun-init,distance=..20] run scoreboard players operation #random vp.reg1 %= #300 vp.Num
execute as @e[tag=gun-init,distance=..20] run scoreboard players remove #random vp.reg1 75
#execute as @e[tag=gun-init,distance=..20] run scoreboard players set #random vp.reg1 0

#元々の角度に乱数を足す
execute as @e[tag=gun-init,distance=..20] run scoreboard players operation #angle-Y vp.reg1 += #random vp.reg1
#-3600 - 3600に補正
execute as @e[tag=gun-init,distance=..20,scores={vp.reg1=..-3600}] run scoreboard players add #angle-Y vp.reg1 3600
execute as @e[tag=gun-init,distance=..20,scores={vp.reg1=3600..}] run scoreboard players remove #angle-Y vp.reg1 3600
#代入
execute as @e[tag=gun-init,distance=..20] store result entity @s Rotation[0] float 0.1 run scoreboard players get #angle-Y vp.reg1

###X軸###
#乱数再生性
function math:rand
#現在の角度取得(3600 - -3600)
execute as @e[tag=gun-init,distance=..20] store result score #angle-X vp.reg1 run data get entity @s Rotation[1] 10
#-100 - 100の乱数生成
execute as @e[tag=gun-init,distance=..20] run scoreboard players operation #random vp.reg1 = #rand vp.rand
execute as @e[tag=gun-init,distance=..20] run scoreboard players operation #random vp.reg1 %= #300 vp.Num
execute as @e[tag=gun-init,distance=..20] run scoreboard players remove #random vp.reg1 75
#execute as @e[tag=gun-init,distance=..20] run scoreboard players set #random vp.reg1 0

#元々の角度に乱数を足す
execute as @e[tag=gun-init,distance=..20] run scoreboard players operation #angle-X vp.reg1 += #random vp.reg1
#-3600 - 3600に補正
execute as @e[tag=gun-init,distance=..20,scores={vp.reg1=..-3600}] run scoreboard players add #angle-X vp.reg1 3600
execute as @e[tag=gun-init,distance=..20,scores={vp.reg1=3600..}] run scoreboard players remove #angle-X vp.reg1 3600
#代入
execute as @e[tag=gun-init,distance=..20] store result entity @s Rotation[1] float 0.1 run scoreboard players get #angle-X vp.reg1

#発射したならreload時間設定
execute if entity @e[tag=gun-init,distance=..20] run scoreboard players set @s vp.w4-cooltime 2

#音
playsound minecraft:weapon.muchingun.fire master @a ~ ~ ~ 1 1 1

#残弾数減算
scoreboard players remove @s vp.ammunition4 1

#x,y,z方向の速度スコア化
execute as @e[tag=gun-init,distance=..20] run function math:vector
execute as @e[tag=gun-init,distance=..20] run scoreboard players operation @s vp.speedX *= @s vp.speed
execute as @e[tag=gun-init,distance=..20] run scoreboard players operation @s vp.speedY *= @s vp.speed
execute as @e[tag=gun-init,distance=..20] run scoreboard players operation @s vp.speedZ *= @s vp.speed
scoreboard players operation @e[tag=gun-init,distance=..20] vp.speedX /= #10 vp.Num
scoreboard players operation @e[tag=gun-init,distance=..20] vp.speedY /= #10 vp.Num
scoreboard players operation @e[tag=gun-init,distance=..20] vp.speedZ /= #10 vp.Num

#終了処理
tag @e[tag=gun-init,distance=..20] remove gun-init
tag @e[tag=rear-gun-target,distance=..40] remove rear-gun-target

