#20mm機銃を使用 ki61
#実行者：機体

#5発目の弾なら曳光弾化
scoreboard players operation #is-tracer vp.reg1 = @s vp.ammunition1
scoreboard players operation #is-tracer vp.reg1 %= #5 vp.Num

#召喚
execute if score #is-tracer vp.reg1 matches 0 run summon armor_stand ~ ~ ~ {NoGravity:1,Invisible:1,Tags:[projectile,gun,20mm,gun-init,right,tracer-yellow,entity-nohit,offset-base,tracer],Duration:30}
execute if score #is-tracer vp.reg1 matches 0 run summon armor_stand ~ ~ ~ {NoGravity:1,Invisible:1,Tags:[projectile,gun,20mm,gun-init,left,tracer-yellow,entity-nohit,offset-base,tracer],Duration:30}
execute unless score #is-tracer vp.reg1 matches 0 run summon area_effect_cloud ~ ~ ~ {Tags:[projectile,gun,20mm,gun-init,right,tracer-yellow,entity-nohit,offset-base],Duration:30}
execute unless score #is-tracer vp.reg1 matches 0 run summon area_effect_cloud ~ ~ ~ {Tags:[projectile,gun,20mm,gun-init,left,tracer-yellow,entity-nohit,offset-base],Duration:30}

#スコア付与
scoreboard players set @e[tag=gun-init,distance=..5] vp.speed 90
execute unless entity @s[tag=mg151] run scoreboard players set @e[tag=gun-init,distance=..5] vp.damage 18
execute if entity @s[tag=mg151] run scoreboard players set @e[tag=gun-init,distance=..5] vp.damage 27
scoreboard players set @e[tag=gun-init,distance=..5,type=armor_stand] vp.max-age 30
scoreboard players operation @e[tag=gun-init,distance=..5] vp.plane-id = @s vp.plane-id
scoreboard players set @e[tag=gun-init,tag=left,distance=..5] vp.offsetX 2200
scoreboard players set @e[tag=gun-init,tag=left,distance=..5] vp.offsetY -180
scoreboard players set @e[tag=gun-init,tag=left,distance=..5] vp.offsetZ 2200
scoreboard players set @e[tag=gun-init,tag=right,distance=..5] vp.offsetX -2280
scoreboard players set @e[tag=gun-init,tag=right,distance=..5] vp.offsetY -180
scoreboard players set @e[tag=gun-init,tag=right,distance=..5] vp.offsetZ 2200

#発射位置に移動
function plane:position/util/calc-triangle-ratio
scoreboard players operation #sin vp.reg1 = #sin vp.return
scoreboard players operation #cos vp.reg1 = #cos vp.return
execute at @s as @e[tag=gun-init,distance=..5] run function plane:position/util/calc-displacement
execute at @s as @e[tag=gun-init,distance=..5] run function plane:position/calc-offset
execute at @s as @e[tag=gun-init,distance=..5] run function plane:position/util/move-parts

#向きを機体方向に向ける
summon minecraft:area_effect_cloud ^ ^ ^200 {Duration:0,Tags:[gun-indicator,entity-nohit],CustomName:"{\"text\":\"gun-indicator\",\"color\":\"aqua\"}"}
execute as @e[tag=gun-init,limit=2,distance=..20] at @s run tp @s ~ ~ ~ facing entity @e[tag=gun-indicator,distance=..220,limit=1]

#発射したならreload時間設定
execute if entity @e[tag=gun-init,distance=..20] run scoreboard players set @s vp.w1-reload 2

#音
execute if entity @s[tag=mg151] run playsound minecraft:weapon.heavy-muchingun.fire master @a ~ ~ ~ 1 0.943874 1
execute unless entity @s[tag=mg151] run playsound minecraft:weapon.heavy-muchingun.fire master @a ~ ~ ~ 1 1.122462 1

#発射炎
#execute as @e[tag=gun-init,distance=..10] at @s run particle minecraft:cloud ^ ^ ^ 0.1 0.1 0.1 0.1 1 force

#残弾数減算
scoreboard players remove @s vp.ammunition1 1

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


