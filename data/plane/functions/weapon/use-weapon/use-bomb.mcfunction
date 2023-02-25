#> plane:weapon/use-weapon/use-bomb
#
# 爆弾投下
#
# @input
#   execute @e[tag=plane-root]
#
# @within function plane:weapon/use-weapon

#> private
# @private
    #declare tag bombing-executer #爆撃実行機体を示す
    #declare tag drop-init #初期化処理中の爆弾であることを示す
    #
    #declare score_holder #plane-id #実行者のplane-idを示す

#実行者タグ付け
tag @s add bombing-executer

#投下対象判定
scoreboard players operation #plane-id vp.reg1 = @s vp.plane-id
execute as @e[tag=plane-bomb,tag=target-parts,tag=plane,distance=..20,limit=1] if score @s vp.plane-id = #plane-id vp.reg1 run tag @s add drop-init
tag @e[tag=drop-init,distance=..20] add dropping

#機体タグ削除
tag @e[tag=drop-init,distance=..20] remove plane

#スコア付与
scoreboard players operation @e[tag=drop-init,distance=..20] vp.speed = @s vp.speed
scoreboard players operation @e[tag=drop-init,distance=..20] vp.speed /= #1000 vp.Num
scoreboard players set @e[tag=drop-init,distance=..20] vp.age 1200

#角度代入
execute store result entity @e[tag=drop-init,distance=..20,limit=1] Rotation[1] float 0.01 run scoreboard players get @s vp.AngX
execute store result entity @e[tag=drop-init,distance=..20,limit=1] Rotation[0] float 0.01 run scoreboard players get @s vp.AngY
#execute as @e[tag=drop-init,distance=..20,limit=1] at @s run tp @s ~ ~ ~ ~90 ~

#x,y,z方向の速度スコア化
scoreboard players operation @e[tag=drop-init,distance=..20] vp.speedX = @s vp.speedX
scoreboard players operation @e[tag=drop-init,distance=..20] vp.speedY = @s vp.speedY
scoreboard players operation @e[tag=drop-init,distance=..20] vp.speedZ = @s vp.speedZ
execute as @e[tag=drop-init,distance=..20] run scoreboard players operation @s vp.speedX *= @s vp.speed
execute as @e[tag=drop-init,distance=..20] run scoreboard players operation @s vp.speedY *= @s vp.speed
execute as @e[tag=drop-init,distance=..20] run scoreboard players operation @s vp.speedZ *= @s vp.speed
scoreboard players operation @e[tag=drop-init,distance=..20] vp.speedX /= #10 vp.Num
scoreboard players operation @e[tag=drop-init,distance=..20] vp.speedY /= #10 vp.Num
scoreboard players operation @e[tag=drop-init,distance=..20] vp.speedZ /= #10 vp.Num

#tellraw @p [{"score" : {"name":"@e[tag=drop-init,distance=..5,limit=1]", "objective":"speed"}}, {"text":" "}, {"score" : {"name":"@e[tag=drop-init,distance=..5,limit=1]", "objective":"age"}}]

#cooltime時間設定
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.current-cooltime set value 4

#音
playsound minecraft:block.piston.contract ambient @a ~ ~ ~ 1 1.5

#残弾数減算
scoreboard players remove #ammunition vp.reg1 1
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.current-ammunition int 1 run scoreboard players get #ammunition vp.reg1

#終了処理
tag @s remove bombing-executer
tag @e[tag=drop-init,distance=..20] remove drop-init
scoreboard players set @p[scores={vp.rightClick=1..}] vp.rightClick 0

