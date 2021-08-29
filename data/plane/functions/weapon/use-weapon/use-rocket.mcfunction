#> plane:weapon/use-weapon/use-rocket
#
# 爆弾投下
#
# @input
#   execute @e[tag=plane-root]
#
# @within function plane:weapon/use-weapon
#
#> private
# @private
    #declare tag rocket-launting-executer #爆撃実行機体を示す
    #declare tag rocket-init #初期化処理中の爆弾であることを示す
    #
    #declare score_holder #plane-id #実行者のplane-idを示す
    #declare score_holder #AngX #ロケットのピッチ角を示す
    #declare score_holder #AngY #ロケットのヨー角を示す

#実行者タグ付け
tag @s add rocket-launting-executer

#投下対象判定
scoreboard players operation #plane-id vp.reg1 = @s vp.plane-id
execute as @e[tag=plane-rocket,tag=plane,distance=..10,limit=1] if score @s vp.plane-id = #plane-id vp.reg1 run tag @s add rocket-init
tag @e[tag=rocket-init,distance=..10] add rocket-moving

#機体タグ削除
tag @e[tag=rocket-init,distance=..10] remove plane

#スコア付与
scoreboard players operation @e[tag=rocket-init,distance=..10] vp.speed = @s vp.speed
scoreboard players operation @e[tag=rocket-init,distance=..10] vp.speed /= #1000 vp.Num
scoreboard players set @e[tag=rocket-init,distance=..10] vp.age 1200
scoreboard players set @e[tag=rocket-init,distance=..10] vp.fall-speed 0

#飛翔モデルに変更
execute as @e[tag=rocket-init,distance=..10,limit=1] if score @s vp.launched-cmd matches 1.. store result entity @s HandItems[0].tag.CustomModelData int 1 run scoreboard players get @s vp.launched-cmd

#角度代入
function math:get-rand
scoreboard players operation #AngX vp.reg1 = #rand vp.return
scoreboard players operation #AngX vp.reg1 %= #200 vp.Num
scoreboard players remove #AngX vp.reg1 100
scoreboard players operation #AngX vp.reg1 += @s vp.AngX
function math:get-rand
scoreboard players operation #AngY vp.reg1 = #rand vp.return
scoreboard players operation #AngY vp.reg1 %= #200 vp.Num
scoreboard players remove #AngY vp.reg1 100
scoreboard players operation #AngY vp.reg1 += @s vp.AngY
execute store result entity @e[tag=rocket-init,distance=..10,limit=1] Rotation[1] float 0.01 run scoreboard players get #AngX vp.reg1
execute store result entity @e[tag=rocket-init,distance=..10,limit=1] Rotation[0] float 0.01 run scoreboard players get #AngY vp.reg1
execute as @e[tag=rocket-init,distance=..10,limit=1] at @s run tp @s ~ ~ ~ ~90 ~

#x,y,z方向の速度スコア化
scoreboard players operation @e[tag=rocket-init,distance=..20] vp.speedX = @s vp.speedX
scoreboard players operation @e[tag=rocket-init,distance=..20] vp.speedY = @s vp.speedY
scoreboard players operation @e[tag=rocket-init,distance=..20] vp.speedZ = @s vp.speedZ

#音
playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ 1 1.5

#tellraw @p [{"score" : {"name":"@e[tag=rocket-init,distance=..5,limit=1]", "objective":"speed"}}, {"text":" "}, {"score" : {"name":"@e[tag=rocket-init,distance=..5,limit=1]", "objective":"age"}}]

#残弾数減算
scoreboard players remove #ammunition vp.reg1 1
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.current-ammunition int 1 run scoreboard players get #ammunition vp.reg1

#終了処理
tag @s remove rocket-launting-executer
tag @e[tag=rocket-init,distance=..10] remove rocket-init
scoreboard players set @p[scores={vp.rightClick=1..}] vp.rightClick 0
