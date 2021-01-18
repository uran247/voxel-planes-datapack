#> plane-data:fw190d-9/weapon/13mm
#
# 12.7mm機銃を使用
#
# @input
#   execute @e[tag=plane-root]
#
# @within function plane-data:fw190d-9/fw190d9-weapon-manager

#> private
# @private
    #declare tag gun-init #銃弾の初期化処理中であることを示す
    #declare tag left1 #左側1番目の機銃弾であることを示す
    #declare tag right1 #右側1番目の機銃弾であることを示す
    #
    #declare score_holder #is-bullet #銃弾を発射すべきかどうかを示す
    #declare score_holder #is-tracer #曳光弾を発射すべきかどうかを示す

#曳光弾判定
scoreboard players operation #is-bullet vp.reg1 = @s vp.ammunition2
scoreboard players operation #is-tracer vp.reg1 = @s vp.ammunition2
scoreboard players operation #is-bullet vp.reg1 %= #4 vp.Num
scoreboard players operation #is-tracer vp.reg1 %= #8 vp.Num

#召喚
execute if score #is-tracer vp.reg1 matches 0 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Tags:[projectile,gun,13mm,gun-init,right1,tracer-lightblue,entity-nohit,offset-base,tracer]}
execute if score #is-tracer vp.reg1 matches 0 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Tags:[projectile,gun,13mm,gun-init,left1,tracer-lightblue,entity-nohit,offset-base,tracer]}
execute if score #is-bullet vp.reg1 matches 0 unless score #is-tracer vp.reg1 matches 0 run summon minecraft:area_effect_cloud ~ ~ ~ {NoGravity:1,Tags:[projectile,gun,13mm,gun-init,right1,tracer-lightblue,entity-nohit,offset-base],Duration:20}
execute if score #is-bullet vp.reg1 matches 0 unless score #is-tracer vp.reg1 matches 0 run summon minecraft:area_effect_cloud ~ ~ ~ {NoGravity:1,Tags:[projectile,gun,13mm,gun-init,left1,tracer-lightblue,entity-nohit,offset-base],Duration:20}

#スコア付与
scoreboard players set @e[tag=gun-init] vp.speed 110
scoreboard players set @e[tag=gun-init] vp.damage 8
scoreboard players set @e[type=armor_stand,tag=gun-init] vp.max-age 20
scoreboard players operation @e[tag=gun-init] vp.plane-id = @s vp.plane-id
scoreboard players set @e[tag=gun-init,tag=left1] vp.offsetX 90
scoreboard players set @e[tag=gun-init,tag=left1] vp.offsetY 1000
scoreboard players set @e[tag=gun-init,tag=left1] vp.offsetZ 1900
scoreboard players set @e[tag=gun-init,tag=right1] vp.offsetX -150
scoreboard players set @e[tag=gun-init,tag=right1] vp.offsetY 1000
scoreboard players set @e[tag=gun-init,tag=right1] vp.offsetZ 1900

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
execute if entity @e[tag=gun-init] run scoreboard players set @s vp.w2-cooltime 2

#残弾数減算
scoreboard players remove @s vp.ammunition2 1

#終了処理
tag @e[tag=gun-init] remove gun-init