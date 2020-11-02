#12.7mm機銃を使用 ki43
#実行者：機体

#5発目の弾なら曳光弾化
scoreboard players operation #is-tracer reg1 = @s ammunition1
scoreboard players operation #is-tracer reg1 %= #6 Num

#召喚
execute unless score #is-tracer reg1 matches 0 run summon area_effect_cloud ~ ~ ~ {Tags:[projectile,gun,12p7mm,gun-init,right1,tracer-orange,entity-nohit,offset-base],Duration:20}
execute unless score #is-tracer reg1 matches 0 run summon area_effect_cloud ~ ~ ~ {Tags:[projectile,gun,12p7mm,gun-init,left1,tracer-orange,entity-nohit,offset-base],Duration:20}
execute unless score #is-tracer reg1 matches 0 run summon area_effect_cloud ~ ~ ~ {Tags:[projectile,gun,12p7mm,gun-init,right2,tracer-orange,entity-nohit,offset-base],Duration:20}
execute unless score #is-tracer reg1 matches 0 run summon area_effect_cloud ~ ~ ~ {Tags:[projectile,gun,12p7mm,gun-init,left2,tracer-orange,entity-nohit,offset-base],Duration:20}
execute if score #is-tracer reg1 matches 0 run summon armor_stand ~ ~ ~ {NoGravity:1,Tags:[projectile,gun,12p7mm,gun-init,right1,tracer-orange,entity-nohit,tracer,offset-base,offset-base],Invisible:1}
execute if score #is-tracer reg1 matches 0 run summon armor_stand ~ ~ ~ {NoGravity:1,Tags:[projectile,gun,12p7mm,gun-init,left1,tracer-orange,entity-nohit,tracer,offset-base,offset-base],Invisible:1}
execute if score #is-tracer reg1 matches 0 run summon armor_stand ~ ~ ~ {NoGravity:1,Tags:[projectile,gun,12p7mm,gun-init,right2,tracer-orange,entity-nohit,tracer,offset-base,offset-base],Invisible:1}
execute if score #is-tracer reg1 matches 0 run summon armor_stand ~ ~ ~ {NoGravity:1,Tags:[projectile,gun,12p7mm,gun-init,left2,tracer-orange,entity-nohit,tracer,offset-base,offset-base],Invisible:1}

#スコア付与
scoreboard players set @e[tag=gun-init,distance=..5] speed 100
scoreboard players set @e[tag=gun-init,distance=..5] damage 8
scoreboard players set @e[tag=gun-init,distance=..5,type=armor_stand] max-age 20
scoreboard players operation @e[tag=gun-init,distance=..5] plane-id = @s plane-id
scoreboard players set @e[tag=gun-init,tag=left1,distance=..5] offsetX 200
scoreboard players set @e[tag=gun-init,tag=left1,distance=..5] offsetY 600
scoreboard players set @e[tag=gun-init,tag=left1,distance=..5] offsetZ 3300
scoreboard players set @e[tag=gun-init,tag=left2,distance=..5] offsetX 1740
scoreboard players set @e[tag=gun-init,tag=left2,distance=..5] offsetY -450
scoreboard players set @e[tag=gun-init,tag=left2,distance=..5] offsetZ 2600
scoreboard players set @e[tag=gun-init,tag=right1,distance=..5] offsetX -330
scoreboard players set @e[tag=gun-init,tag=right1,distance=..5] offsetY 600
scoreboard players set @e[tag=gun-init,tag=right1,distance=..5] offsetZ 3300
scoreboard players set @e[tag=gun-init,tag=right2,distance=..5] offsetX -1740
scoreboard players set @e[tag=gun-init,tag=right2,distance=..5] offsetY -450
scoreboard players set @e[tag=gun-init,tag=right2,distance=..5] offsetZ 2600

#発射位置に移動
function plane:position/util/calc-triangle-ratio
scoreboard players operation #sin reg1 = #sin return
scoreboard players operation #cos reg1 = #cos return
execute at @s as @e[tag=gun-init,distance=..5] run function plane:position/util/calc-displacement
execute at @s as @e[tag=gun-init,distance=..5] run function plane:position/calc-offset
execute at @s as @e[tag=gun-init,distance=..5] run function plane:position/util/move-parts

#向きを機体方向に向ける
execute at @s run summon minecraft:area_effect_cloud ^ ^ ^150 {Duration:0,Tags:[gun-indicator,entity-nohit]}
execute as @e[tag=gun-init,distance=..20] at @s run tp @s ~ ~ ~ facing entity @e[tag=gun-indicator,distance=..220,limit=1]

#発射したならreload時間設定
execute if entity @e[tag=gun-init,distance=..20] run scoreboard players set @s w1-reload 2

#音
playsound minecraft:weapon.gun-7p7m.fire master @a ~ ~ ~ 1 1 1

#発射炎
#execute as @e[tag=gun-init,distance=..10] at @s run particle minecraft:cloud ^ ^ ^ 0.1 0.1 0.1 0.1 1 force

#残弾数減算
scoreboard players remove @s ammunition1 1

#x,y,z方向の速度スコア化
execute as @e[tag=gun-init,distance=..20] run function math:vector
execute as @e[tag=gun-init,distance=..20] run scoreboard players operation @s speedX *= @s speed
execute as @e[tag=gun-init,distance=..20] run scoreboard players operation @s speedY *= @s speed
execute as @e[tag=gun-init,distance=..20] run scoreboard players operation @s speedZ *= @s speed
scoreboard players operation @e[tag=gun-init,distance=..20] speedX /= #10 Num
scoreboard players operation @e[tag=gun-init,distance=..20] speedY /= #10 Num
scoreboard players operation @e[tag=gun-init,distance=..20] speedZ /= #10 Num

#終了処理
kill @e[tag=gun-indicator,distance=..220]
tag @e[tag=gun-init,distance=..20] remove gun-init
#scoreboard players set @p rightClick 0


