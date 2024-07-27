#> plane-data:d3a/weapon/rear-gun
#
# 7.7mm後部機銃を使用
#
# @input
#   execute @e[tag=plane-root]
#
# @within function plane-data:d3a/d3a-weapon-manager

#> private
# @private
    #declare tag gun-init #銃弾の初期化処理中であることを示す
    #declare tag left1 #左側1番目の機銃弾であることを示す
    #declare tag right1 #右側1番目の機銃弾であることを示す
    #
    #declare score_holder #is-bullet #銃弾を発射すべきかどうかを示す
    #declare score_holder #is-tracer #曳光弾を発射すべきかどうかを示す
    #declare score_holder #angle-Y #銃弾のY角度を示す
    #declare score_holder #angle-X #銃弾のX角度を示す

#実際に発射するかの判定
scoreboard players operation #is-bullet vp.reg1 = @s vp.ammunition3
scoreboard players operation #is-tracer vp.reg1 = @s vp.ammunition3
scoreboard players operation #is-bullet vp.reg1 %= #3 vp.Num
scoreboard players operation #is-tracer vp.reg1 %= #6 vp.Num

#召喚
execute if score #is-tracer vp.reg1 matches 0 run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:[projectile,gun,7p7mm,gun-init,tracer,tracer-lightblue,entity-nohit,offset-base]}
execute if score #is-bullet vp.reg1 matches 0 unless score #is-tracer vp.reg1 matches 0 run summon minecraft:area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:[projectile,gun,7p7mm,gun-init,tracer,tracer-lightblue,entity-nohit,offset-base],Duration:25}

#スコア付与
scoreboard players set @e[tag=gun-init,distance=..5] vp.speed 95
scoreboard players set @e[tag=gun-init,distance=..5] vp.damage 6
scoreboard players operation @e[tag=gun-init,distance=..5] vp.plane-id = @s vp.plane-id
scoreboard players set @e[tag=gun-init,distance=..5] vp.offsetX 0
scoreboard players set @e[tag=gun-init,distance=..5] vp.offsetY 1000
scoreboard players set @e[tag=gun-init,distance=..5] vp.offsetZ 0

#発射位置に移動
function plane:position/util/calc-triangle-ratio
scoreboard players operation #sin vp.reg1 = #sin vp.return
scoreboard players operation #cos vp.reg1 = #cos vp.return
execute as @e[tag=gun-init,distance=..5] run function plane-data:util/reargun-set-position

#向きをターゲット方向に向ける
execute as @e[tag=gun-init,distance=..20] at @s run tp @s ~ ~ ~ facing entity @e[tag=rear-gun-target,distance=..32,limit=1]

####ランダムに角度変更####
###Y軸###
#現在の角度取得(3600 - -3600)
execute as @e[tag=gun-init,distance=..20] store result score #angle-Y vp.reg1 run data get entity @s Rotation[0] 10
#-100 - 100の乱数生成
execute as @e[tag=gun-init,distance=..20] run scoreboard players operation #rand vp.reg1 += #rand vp.rand
execute as @e[tag=gun-init,distance=..20] run scoreboard players operation #rand vp.reg1 %= #200 vp.Num
execute as @e[tag=gun-init,distance=..20] run scoreboard players remove #rand vp.reg1 100
#元々の角度に乱数を足す
execute as @e[tag=gun-init,distance=..20] run scoreboard players operation #angle-Y vp.reg1 += #rand vp.reg1
#-3600 - 3600に補正
execute as @e[tag=gun-init,scores={vp.reg1=..-3600},distance=..20] run scoreboard players add #angle-Y vp.reg1 3600
execute as @e[tag=gun-init,scores={vp.reg1=3600..},distance=..20] run scoreboard players remove #angle-Y vp.reg1 3600
#代入
execute as @e[tag=gun-init,distance=..20] store result entity @s Rotation[0] float 0.1 run scoreboard players get #angle-Y vp.reg1

###X軸###
#乱数再生性
function math:rand
#現在の角度取得(3600 - -3600)
execute as @e[tag=gun-init,distance=..20] store result score #angle-X vp.reg1 run data get entity @s Rotation[1] 10
#-100 - 100の乱数生成
execute as @e[tag=gun-init,distance=..20] run scoreboard players operation #rand vp.reg1 += #rand vp.rand
execute as @e[tag=gun-init,distance=..20] run scoreboard players operation #rand vp.reg1 %= #200 vp.Num
execute as @e[tag=gun-init,distance=..20] run scoreboard players remove #rand vp.reg1 100
#元々の角度に乱数を足す
execute as @e[tag=gun-init,distance=..20] run scoreboard players operation #angle-X vp.reg1 += #rand vp.reg1
#-3600 - 3600に補正
execute as @e[tag=gun-init,scores={vp.reg1=..-3600},distance=..20] run scoreboard players add #angle-X vp.reg1 3600
execute as @e[tag=gun-init,scores={vp.reg1=3600..},distance=..20] run scoreboard players remove #angle-X vp.reg1 3600
#代入
execute as @e[tag=gun-init,distance=..20] store result entity @s Rotation[1] float 0.1 run scoreboard players get #angle-X vp.reg1


#発射したならreload時間設定
#execute if entity @e[tag=gun-init,distance=..20] run scoreboard players set @s w1-reload 1

#音
playsound minecraft:weapon.muchingun.fire master @a ~ ~ ~ 1 1 1

#発射炎
#execute as @e[tag=gun-init,distance=..10] at @s run particle minecraft:cloud ^ ^ ^ 0.1 0.1 0.1 0.1 1 force

#残弾数減算
scoreboard players remove @s vp.ammunition3 1

#終了処理
tag @e[tag=gun-init,distance=..20] remove gun-init
tag @e[tag=rear-gun-target-candidate,distance=..32] remove rear-gun-target-candidate
tag @e[tag=rear-gun-target,distance=..32] remove rear-gun-target
