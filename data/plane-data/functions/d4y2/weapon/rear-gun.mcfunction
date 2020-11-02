#7.7mm後部機銃を使用 d4y2
#実行者：機体

#召喚
summon minecraft:area_effect_cloud ~ ~ ~ {NoGravity:1,Tags:[projectile,gun,7p7mm,gun-init,tracer-lightblue,entity-nohit,offset-base],Duration:25}

#スコア付与
scoreboard players set @e[tag=gun-init,distance=..5] speed 95
scoreboard players set @e[tag=gun-init,distance=..5] damage 2
scoreboard players operation @e[tag=gun-init,distance=..5] plane-id = @s plane-id
scoreboard players set @e[tag=gun-init,distance=..5] offsetX -50
scoreboard players set @e[tag=gun-init,distance=..5] offsetY 2150
scoreboard players set @e[tag=gun-init,distance=..5] offsetZ 950

#5発目の弾なら曳光弾化
scoreboard players operation @s reg1 = @s ammunition3
scoreboard players operation @s reg1 %= #5 Num
execute if score @s reg1 matches 0 run tag @e[tag=gun-init,distance=..10] add tracer

#発射位置に移動
function plane:position/util/calc-triangle-ratio
scoreboard players operation #sin reg1 = #sin return
scoreboard players operation #cos reg1 = #cos return
execute at @s as @e[tag=gun-init,distance=..5] run function plane:position/util/calc-displacement
execute at @s as @e[tag=gun-init,distance=..5] run function plane:position/calc-offset
execute at @s as @e[tag=gun-init,distance=..5] run function plane:position/util/move-parts

#向きをターゲット方向に向ける
execute as @e[tag=gun-init,limit=2,distance=..20] at @s run tp @s ~ ~ ~ facing entity @e[tag=rear-gun-target,distance=..32,limit=1]


####ランダムに角度変更####
###Y軸###
#現在の角度取得(3600 - -3600)
execute as @e[tag=gun-init,distance=..20] store result score #angle-Y reg1 run data get entity @s Rotation[0] 10
#-100 - 100の乱数生成
execute as @e[tag=gun-init,distance=..20] run scoreboard players operation #random reg1 += #rand rand
execute as @e[tag=gun-init,distance=..20] run scoreboard players operation #random reg1 %= #200 Num
execute as @e[tag=gun-init,distance=..20] run scoreboard players remove #random reg1 100
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
execute as @e[tag=gun-init,distance=..20] run scoreboard players operation #random reg1 %= #200 Num
execute as @e[tag=gun-init,distance=..20] run scoreboard players remove #random reg1 100
#元々の角度に乱数を足す
execute as @e[tag=gun-init,distance=..20] run scoreboard players operation #angle-X reg1 += #random reg1
#-3600 - 3600に補正
execute as @e[tag=gun-init,distance=..20,scores={reg1=..-3600}] run scoreboard players add #angle-X reg1 3600
execute as @e[tag=gun-init,distance=..20,scores={reg1=3600..}] run scoreboard players remove #angle-X reg1 3600
#代入
execute as @e[tag=gun-init,distance=..20] store result entity @s Rotation[1] float 0.1 run scoreboard players get #angle-X reg1


#発射したならreload時間設定
#execute if entity @e[tag=gun-init,distance=..20] run scoreboard players set @s w1-reload 1

#音
playsound minecraft:weapon.muchingun.fire master @a ~ ~ ~ 1 1 1

#発射炎
#execute as @e[tag=gun-init,distance=..10] at @s run particle minecraft:cloud ^ ^ ^ 0.1 0.1 0.1 0.1 1 force

#残弾数減算
scoreboard players remove @s ammunition3 1

#終了処理
tag @e[tag=gun-init,distance=..20] remove gun-init
tag @e[tag=rear-gun-target-candidate,distance=..32] remove rear-gun-target-candidate
tag @e[tag=rear-gun-target,distance=..32] remove rear-gun-target
#scoreboard players set @p rightClick 0

