#> plane-data:ki-21/weapon/bomb
#
# 爆弾投下
#
# @input
#   execute @e[tag=plane-root]
#
# @within function plane-data:ki-21/ki21-weapon-manager

#> private
# @private
    #declare tag bombing-executer #爆撃実行機体を示す
    #declare tag drop-init #初期化処理中の爆弾であることを示す
    #declare tag bomb-drop-origin #爆弾が存在せず召喚する場合、召喚位置の起点となるエンティティを示す
    #declare tag ki21-bomb-7 #新たに召喚した爆弾であることを示す
    #
    #declare score_holder #plane-id #実行者のplane-idを示す
    #declare score_holder #ang-x #爆弾のピッチ角を示す
    #declare score_holder #offset #爆弾を起点からどこまでずらすかを指定するindex番号

# 爆弾投下 ki-21
# 実行者：機体

#実行者タグ付け
tag @s add bombing-executer

#投下対象判定
scoreboard players operation #plane-id vp.reg1 = @s vp.plane-id
execute as @e[tag=plane-bomb,tag=plane,distance=..20,limit=1] if score @s vp.plane-id = #plane-id vp.reg1 run tag @s add drop-init
tag @e[tag=drop-init,distance=..20] add dropping

#ki21タグ削除
tag @e[tag=drop-init,distance=..20] remove plane

#対象がいなかったら召喚
scoreboard players operation #offset vp.reg1 = @s vp.ammunition1
scoreboard players operation #offset vp.reg1 %= #3 vp.Num
execute as @s[tag=50kg] unless entity @e[tag=drop-init,distance=..20] as @e[tag=body,distance=..10] if score @s vp.plane-id = #plane-id vp.reg1 run tag @s add bomb-drop-origin
execute as @s[tag=50kg,scores={vp.ammunition1=..3}] unless entity @e[tag=drop-init,distance=..20] as @e[tag=bomb-drop-origin,scores={vp.acc-cor=..-1},distance=..10] run scoreboard players add @s vp.acc-cor 1
execute as @s[tag=50kg,scores={vp.ammunition1=1..}] unless entity @e[tag=drop-init,distance=..20] as @e[tag=bomb-drop-origin,scores={vp.pitch-spd-cor=..-1},distance=..10] run scoreboard players add @s vp.pitch-spd-cor 1
execute as @s[tag=50kg,scores={vp.ammunition1=1..}] unless entity @e[tag=drop-init,distance=..20] as @e[tag=bomb-drop-origin,scores={vp.yaw-spd-cor=..-1},distance=..10] run scoreboard players add @s vp.yaw-spd-cor 1
tag @e[tag=bomb-drop-origin,distance=..10] remove bomb-drop-origin
execute as @s[tag=50kg] unless entity @e[tag=drop-init,distance=..20] if score #offset vp.reg1 matches 0 run summon armor_stand ^-0.5 ^-1 ^ {Tags:["ki21-bomb-7",drop-init,dropping,plane-bomb,plane-parts,entity-nohit,50kg,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:84,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
execute as @s[tag=50kg] unless entity @e[tag=drop-init,distance=..20] if score #offset vp.reg1 matches 1 run summon armor_stand ^ ^-1 ^ {Tags:["ki21-bomb-7",drop-init,dropping,plane-bomb,plane-parts,entity-nohit,50kg,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:84,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
execute as @s[tag=50kg] unless entity @e[tag=drop-init,distance=..20] if score #offset vp.reg1 matches 2 run summon armor_stand ^0.5 ^-1 ^ {Tags:["ki21-bomb-7",drop-init,dropping,plane-bomb,plane-parts,entity-nohit,50kg,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:84,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=ki21-bomb-7,tag=drop-init] vp.damage 250
scoreboard players operation @e[tag=ki21-bomb-7,tag=drop-init] vp.plane-id = @s vp.plane-id


#スコア付与
scoreboard players operation @e[tag=drop-init,distance=..20] vp.speed = @s vp.speed
scoreboard players operation @e[tag=drop-init,distance=..20] vp.speed /= #1000 vp.Num
scoreboard players set @e[tag=drop-init,distance=..20] vp.age 1200

#角度代入
execute store result entity @e[tag=drop-init,distance=..20,limit=1] Rotation[1] float 0.01 run scoreboard players get @s vp.AngX
execute store result entity @e[tag=drop-init,distance=..20,limit=1] Rotation[0] float 0.01 run scoreboard players get @s vp.AngY
scoreboard players operation #ang-x vp.reg1 = @s vp.AngX
scoreboard players remove #ang-x vp.reg1 9000
execute store result entity @e[tag=drop-init,distance=..20,limit=1] Pose.RightArm[2] float 0.01 run scoreboard players get #ang-x vp.reg1
execute as @e[tag=drop-init,distance=..20,limit=1] at @s run tp @s ~ ~ ~ ~90 ~

#発射したならreload時間設定
#execute if entity @e[tag=gun-init,distance=..20] run scoreboard players set @s vp.w1-cooltime 2

#残弾数減算
scoreboard players remove @s vp.ammunition1 1

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
#tellraw @p [{"score" : {"name":"@s", "objective":"speedX"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"speedY"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"speedZ"}}]
#execute as @e[tag=drop-init,distance=..20] run tellraw @p [{"score" : {"name":"@s", "objective":"speedX"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"speedY"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"speedZ"}}]

#音
playsound minecraft:block.piston.contract ambient @a ~ ~ ~ 1 1.5

#終了処理
tag @s remove bombing-executer
tag @e[tag=drop-init,distance=..20] remove drop-init
scoreboard players set @p[scores={vp.rightClick=1..}] vp.rightClick 0


