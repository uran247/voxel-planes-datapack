#12.7mm機銃を使用
#実行者：機体

#曳光弾判定
scoreboard players operation #is-bullet vp.reg1 = @s vp.ammunition1
scoreboard players operation #is-tracer vp.reg1 = @s vp.ammunition1
scoreboard players operation #is-bullet vp.reg1 %= #4 vp.Num
scoreboard players operation #is-tracer vp.reg1 %= #8 vp.Num

#召喚
execute if score #is-tracer vp.reg1 matches 0 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Tags:[projectile,gun,12p7mm,gun-init,right1,tracer-lightblue,entity-nohit,offset-base,tracer]}
execute if score #is-tracer vp.reg1 matches 0 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Tags:[projectile,gun,12p7mm,gun-init,right2,tracer-lightblue,entity-nohit,offset-base,tracer]}
execute if score #is-tracer vp.reg1 matches 0 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Tags:[projectile,gun,12p7mm,gun-init,right3,tracer-lightblue,entity-nohit,offset-base,tracer]}
execute if score #is-tracer vp.reg1 matches 0 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Tags:[projectile,gun,12p7mm,gun-init,left1,tracer-lightblue,entity-nohit,offset-base,tracer]}
execute if score #is-tracer vp.reg1 matches 0 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Tags:[projectile,gun,12p7mm,gun-init,left2,tracer-lightblue,entity-nohit,offset-base,tracer]}
execute if score #is-tracer vp.reg1 matches 0 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Tags:[projectile,gun,12p7mm,gun-init,left3,tracer-lightblue,entity-nohit,offset-base,tracer]}
execute if score #is-bullet vp.reg1 matches 0 unless score #is-tracer vp.reg1 matches 0 run summon minecraft:area_effect_cloud ~ ~ ~ {NoGravity:1,Tags:[projectile,gun,12p7mm,gun-init,right1,tracer-lightblue,entity-nohit,offset-base],Duration:20}
execute if score #is-bullet vp.reg1 matches 0 unless score #is-tracer vp.reg1 matches 0 run summon minecraft:area_effect_cloud ~ ~ ~ {NoGravity:1,Tags:[projectile,gun,12p7mm,gun-init,right2,tracer-lightblue,entity-nohit,offset-base],Duration:20}
execute if score #is-bullet vp.reg1 matches 0 unless score #is-tracer vp.reg1 matches 0 run summon minecraft:area_effect_cloud ~ ~ ~ {NoGravity:1,Tags:[projectile,gun,12p7mm,gun-init,right3,tracer-lightblue,entity-nohit,offset-base],Duration:20}
execute if score #is-bullet vp.reg1 matches 0 unless score #is-tracer vp.reg1 matches 0 run summon minecraft:area_effect_cloud ~ ~ ~ {NoGravity:1,Tags:[projectile,gun,12p7mm,gun-init,left1,tracer-lightblue,entity-nohit,offset-base],Duration:20}
execute if score #is-bullet vp.reg1 matches 0 unless score #is-tracer vp.reg1 matches 0 run summon minecraft:area_effect_cloud ~ ~ ~ {NoGravity:1,Tags:[projectile,gun,12p7mm,gun-init,left2,tracer-lightblue,entity-nohit,offset-base],Duration:20}
execute if score #is-bullet vp.reg1 matches 0 unless score #is-tracer vp.reg1 matches 0 run summon minecraft:area_effect_cloud ~ ~ ~ {NoGravity:1,Tags:[projectile,gun,12p7mm,gun-init,left3,tracer-lightblue,entity-nohit,offset-base],Duration:20}

#スコア付与
scoreboard players set @e[tag=gun-init] vp.speed 110
scoreboard players set @e[tag=gun-init] vp.damage 8
scoreboard players set @e[tag=gun-init,type=armor_stand] vp.max-age 20
scoreboard players operation @e[tag=gun-init] vp.plane-id = @s vp.plane-id
scoreboard players set @e[tag=gun-init,tag=left1] vp.offsetX 2930
scoreboard players set @e[tag=gun-init,tag=left1] vp.offsetY -560
scoreboard players set @e[tag=gun-init,tag=left1] vp.offsetZ 3600
scoreboard players set @e[tag=gun-init,tag=left2] vp.offsetX 3120
scoreboard players set @e[tag=gun-init,tag=left2] vp.offsetY -530
scoreboard players set @e[tag=gun-init,tag=left2] vp.offsetZ 3600
scoreboard players set @e[tag=gun-init,tag=left3] vp.offsetX 3300
scoreboard players set @e[tag=gun-init,tag=left3] vp.offsetY -500
scoreboard players set @e[tag=gun-init,tag=left3] vp.offsetZ 3600
scoreboard players set @e[tag=gun-init,tag=right1] vp.offsetX -2380
scoreboard players set @e[tag=gun-init,tag=right1] vp.offsetY -560
scoreboard players set @e[tag=gun-init,tag=right1] vp.offsetZ 3600
scoreboard players set @e[tag=gun-init,tag=right2] vp.offsetX -2570
scoreboard players set @e[tag=gun-init,tag=right2] vp.offsetY -530
scoreboard players set @e[tag=gun-init,tag=right2] vp.offsetZ 3600
scoreboard players set @e[tag=gun-init,tag=right3] vp.offsetX -2750
scoreboard players set @e[tag=gun-init,tag=right3] vp.offsetY -500
scoreboard players set @e[tag=gun-init,tag=right3] vp.offsetZ 3600

#発射位置に移動
function plane:position/util/calc-triangle-ratio
scoreboard players operation #sin vp.reg1 = #sin vp.return
scoreboard players operation #cos vp.reg1 = #cos vp.return
execute as @e[tag=gun-init,distance=..5] run function plane-data:util/gun-set-position

#音
playsound minecraft:weapon.gun-7p7m.fire master @a ~ ~ ~ 1 1 1

#発射炎
#execute as @e[tag=gun-init,distance=..10] at @s run particle minecraft:cloud ^ ^ ^ 0.1 0.1 0.1 0.1 1 force

#発射したならreload時間設定
execute if entity @e[tag=gun-init] run scoreboard players set @s vp.w1-cooltime 2

#残弾数減算
scoreboard players remove @s vp.ammunition1 1

#終了処理
tag @e[tag=gun-init] remove gun-init


