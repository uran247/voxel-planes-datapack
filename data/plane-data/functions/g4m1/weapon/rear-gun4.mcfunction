#20mm後部機銃を使用 g4m1
#実行者：機体

#n発目の弾なら曳光弾化
scoreboard players operation #is-tracer reg1 = @s ammunition5
scoreboard players operation #is-tracer reg1 %= #5 Num

#弾召喚
execute if score #is-tracer reg1 matches 1 run summon armor_stand ~ ~ ~ {NoGravity:1,Invisible:1,Tags:[projectile,gun,20mm,gun-init,right,tracer-yellow,entity-nohit,offset-base,tracer],Duration:30}
execute unless score #is-tracer reg1 matches 0 run summon area_effect_cloud ~ ~ ~ {Tags:[projectile,gun,20mm,gun-init,right,tracer-yellow,entity-nohit,offset-base],Duration:30}


#スコア付与
scoreboard players set @e[tag=gun-init,distance=..5] speed 100
scoreboard players set @e[tag=gun-init,distance=..5] damage 13
scoreboard players set @e[tag=gun-init,distance=..5] max-age 100
scoreboard players operation @e[tag=gun-init,distance=..5] plane-id = @s plane-id
scoreboard players set @e[tag=gun-init,distance=..5] offsetX -220
scoreboard players set @e[tag=gun-init,distance=..5] offsetY 500
scoreboard players set @e[tag=gun-init,distance=..5] offsetZ -9200

#発射位置に移動
function plane:position/util/calc-triangle-ratio
scoreboard players operation #sin reg1 = #sin return
scoreboard players operation #cos reg1 = #cos return
execute at @s as @e[tag=gun-init,distance=..5] run function plane:position/util/calc-displacement
execute at @s as @e[tag=gun-init,distance=..5] run function plane:position/calc-offset
execute at @s as @e[tag=gun-init,distance=..5] run function plane:position/util/move-parts

#向きをターゲット方向に向ける
execute as @e[tag=gun-init,limit=2,distance=..20] at @s run tp @s ~ ~ ~ facing entity @e[tag=rear-gun-target,distance=..55,limit=1]


####ランダムに角度変更####
###Y軸###
#現在の角度取得(3600 - -3600)
execute as @e[tag=gun-init,distance=..20] store result score #angle-Y reg1 run data get entity @s Rotation[0] 10
#-50 - 50の乱数生成
execute as @e[tag=gun-init,distance=..20] run scoreboard players operation #random reg1 += #rand rand
execute as @e[tag=gun-init,distance=..20] run scoreboard players operation #random reg1 %= #150 Num
execute as @e[tag=gun-init,distance=..20] run scoreboard players remove #random reg1 75

#元々の角度に乱数を足す
execute as @e[tag=gun-init,distance=..20] run scoreboard players operation #angle-Y reg1 += #random reg1
#-3600 - 3600に補正
execute as @e[tag=gun-init,distance=..20,scores={reg1=..-3600}] run scoreboard players add #angle-Y reg1 3600
execute as @e[tag=gun-init,distance=..20,scores={reg1=3600..}] run scoreboard players remove #angle-Y reg1 3600
#代入
execute as @e[tag=gun-init,distance=..20] store result entity @s Rotation[0] float 0.1 run scoreboard players get #angle-Y reg1

###X軸###
#乱数再生性
function math:rand
#現在の角度取得(3600 - -3600)
execute as @e[tag=gun-init,distance=..20] store result score #angle-X reg1 run data get entity @s Rotation[1] 10
#-100 - 100の乱数生成
execute as @e[tag=gun-init,distance=..20] run scoreboard players operation #random reg1 += #rand rand
execute as @e[tag=gun-init,distance=..20] run scoreboard players operation #random reg1 %= #150 Num
execute as @e[tag=gun-init,distance=..20] run scoreboard players remove #random reg1 75

#元々の角度に乱数を足す
execute as @e[tag=gun-init,distance=..20] run scoreboard players operation #angle-X reg1 += #random reg1
#-3600 - 3600に補正
execute as @e[tag=gun-init,distance=..20,scores={reg1=..-3600}] run scoreboard players add #angle-X reg1 3600
execute as @e[tag=gun-init,distance=..20,scores={reg1=3600..}] run scoreboard players remove #angle-X reg1 3600
#代入
execute as @e[tag=gun-init,distance=..20] store result entity @s Rotation[1] float 0.1 run scoreboard players get #angle-X reg1

#x,y,z方向の速度スコア化
execute as @e[tag=gun-init,distance=..20] run function math:vector
execute as @e[tag=gun-init,distance=..20] run scoreboard players operation @s speedX *= @s speed
execute as @e[tag=gun-init,distance=..20] run scoreboard players operation @s speedY *= @s speed
execute as @e[tag=gun-init,distance=..20] run scoreboard players operation @s speedZ *= @s speed
scoreboard players operation @e[tag=gun-init,distance=..20] speedX /= #10 Num
scoreboard players operation @e[tag=gun-init,distance=..20] speedY /= #10 Num
scoreboard players operation @e[tag=gun-init,distance=..20] speedZ /= #10 Num


#発射したならreload時間設定
execute if entity @e[tag=gun-init,distance=..20] run scoreboard players set @s w5-reload 2

#音
playsound minecraft:weapon.heavy-muchingun.fire master @a ~ ~ ~ 1 1 1

#残弾数減算
scoreboard players remove @s ammunition5 1

#終了処理
tag @e[tag=gun-init,distance=..20] remove gun-init
tag @e[tag=rear-gun-target,distance=..55] remove rear-gun-target

