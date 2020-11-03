#20mm機銃を使用 a6m2
#実行者：機体

#5発目の弾なら曳光弾化
scoreboard players operation #is-tracer reg1 = @s ammunition1
scoreboard players operation #is-tracer reg1 %= #5 Num

#召喚
execute if score #is-tracer reg1 matches 0 run summon armor_stand ~ ~ ~ {NoGravity:1,Invisible:1,Tags:[projectile,gun,20mm,gun-init,right1,tracer-orange,entity-nohit,offset-base,tracer],Duration:25}
execute if score #is-tracer reg1 matches 0 run summon armor_stand ~ ~ ~ {NoGravity:1,Invisible:1,Tags:[projectile,gun,20mm,gun-init,right2,tracer-orange,entity-nohit,offset-base,tracer],Duration:25}
execute if score #is-tracer reg1 matches 0 run summon armor_stand ~ ~ ~ {NoGravity:1,Invisible:1,Tags:[projectile,gun,20mm,gun-init,left1,tracer-orange,entity-nohit,offset-base,tracer],Duration:25}
execute if score #is-tracer reg1 matches 0 run summon armor_stand ~ ~ ~ {NoGravity:1,Invisible:1,Tags:[projectile,gun,20mm,gun-init,left2,tracer-orange,entity-nohit,offset-base,tracer],Duration:25}
execute unless score #is-tracer reg1 matches 0 run summon area_effect_cloud ~ ~ ~ {Tags:[projectile,gun,20mm,gun-init,right1,tracer-orange,entity-nohit,offset-base],Duration:25}
execute unless score #is-tracer reg1 matches 0 run summon area_effect_cloud ~ ~ ~ {Tags:[projectile,gun,20mm,gun-init,right2,tracer-orange,entity-nohit,offset-base],Duration:25}
execute unless score #is-tracer reg1 matches 0 run summon area_effect_cloud ~ ~ ~ {Tags:[projectile,gun,20mm,gun-init,left1,tracer-orange,entity-nohit,offset-base],Duration:25}
execute unless score #is-tracer reg1 matches 0 run summon area_effect_cloud ~ ~ ~ {Tags:[projectile,gun,20mm,gun-init,left2,tracer-orange,entity-nohit,offset-base],Duration:25}

#スコア付与
scoreboard players set @e[tag=gun-init,distance=..5] speed 95
scoreboard players set @e[tag=gun-init,distance=..5] damage 22
scoreboard players set @e[tag=gun-init,distance=..5,type=armor_stand] max-age 25
scoreboard players operation @e[tag=gun-init,distance=..5] plane-id = @s plane-id
scoreboard players set @e[tag=gun-init,tag=left1,distance=..5] offsetX 2220
scoreboard players set @e[tag=gun-init,tag=left1,distance=..5] offsetY -350
scoreboard players set @e[tag=gun-init,tag=left1,distance=..5] offsetZ 3000
scoreboard players set @e[tag=gun-init,tag=left2,distance=..5] offsetX 2540
scoreboard players set @e[tag=gun-init,tag=left2,distance=..5] offsetY -350
scoreboard players set @e[tag=gun-init,tag=left2,distance=..5] offsetZ 2950
scoreboard players set @e[tag=gun-init,tag=right1,distance=..5] offsetX -2340
scoreboard players set @e[tag=gun-init,tag=right1,distance=..5] offsetY -350
scoreboard players set @e[tag=gun-init,tag=right1,distance=..5] offsetZ 3000
scoreboard players set @e[tag=gun-init,tag=right2,distance=..5] offsetX -2650
scoreboard players set @e[tag=gun-init,tag=right2,distance=..5] offsetY -350
scoreboard players set @e[tag=gun-init,tag=right2,distance=..5] offsetZ 2540

#発射位置に移動
function plane:position/util/calc-triangle-ratio
scoreboard players operation #sin reg1 = #sin return
scoreboard players operation #cos reg1 = #cos return
execute at @s as @e[tag=gun-init,distance=..5] run function plane:position/util/calc-displacement
execute at @s as @e[tag=gun-init,distance=..5] run function plane:position/calc-offset
execute at @s as @e[tag=gun-init,distance=..5] run function plane:position/util/move-parts

#向きを機体方向に向ける
tp 0-0-0-0-4 ^ ^ ^300
execute as @e[tag=gun-init,limit=4,distance=..20] at @s run tp @s ~ ~ ~ facing entity 0-0-0-0-4

#音
playsound minecraft:weapon.heavy-muchingun.fire master @a ~ ~ ~ 1 1 1

#発射炎
#execute as @e[tag=gun-init,distance=..10] at @s run particle minecraft:cloud ^ ^ ^ 0.1 0.1 0.1 0.1 1 force

#発射したならreload時間設定
execute if entity @e[tag=gun-init,distance=..20] run scoreboard players set @s w1-reload 2

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
tag @e[tag=gun-init,distance=..20] remove gun-init

#エンティティ返却
tp 0-0-0-0-4 0 1 0

