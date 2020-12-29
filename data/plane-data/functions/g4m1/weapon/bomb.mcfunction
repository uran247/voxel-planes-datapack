#> plane-data:g4m1/weapon/bomb
#
# 爆弾投下
#
# @input
#   execute @e[tag=plane-root]
#
# @within function plane-data:g4m1/g4m1-weapon-manager

#> private
# @private
    #declare tag bombing-executer #爆撃実行機体を示す
    #declare tag drop-init #初期化処理中の爆弾であることを示す
    #declare tag bomb-drop-origin #爆弾が存在せず召喚する場合、召喚位置の起点となるエンティティを示す
    #declare tag g4m1-bomb-7 #新たに召喚した爆弾であることを示す
    #
    #declare score_holder #plane-id #実行者のplane-idを示す
    #declare score_holder #ang-x #爆弾のピッチ角を示す
    #declare score_holder #offset #爆弾を起点からどこまでずらすかを指定するindex番号

#実行者タグ付け
tag @s add bombing-executer

#id記録
scoreboard players operation #plane-id vp.reg1 = @s vp.plane-id
#execute as @e[tag=plane-bomb,tag=plane,distance=..20,limit=1] if score @s plane-id = #plane-id vp.reg1 run tag @s add drop-init
#tag @e[tag=drop-init,distance=..20] add dropping

#g4m1タグ削除
tag @e[tag=drop-init,distance=..20] remove plane

#機動力補正解除
execute as @e[tag=body,distance=..10] if score @s vp.plane-id = #plane-id vp.reg1 run tag @s add bomb-drop-origin
execute as @s[tag=250kg] as @e[tag=bomb-drop-origin,scores={vp.acc-cor=..-1},distance=..10] run scoreboard players add @s vp.acc-cor 1
execute as @s[tag=250kg] as @e[tag=bomb-drop-origin,scores={vp.pitch-spd-cor=..-1},distance=..10] run scoreboard players add @s vp.pitch-spd-cor 2
execute as @s[tag=250kg] as @e[tag=bomb-drop-origin,scores={vp.yaw-spd-cor=..-1},distance=..10] run scoreboard players add @s vp.yaw-spd-cor 2
execute as @s[tag=800kg] as @e[tag=bomb-drop-origin,scores={vp.acc-cor=..-1},distance=..10] run scoreboard players add @s vp.acc-cor 3
execute as @s[tag=800kg] as @e[tag=bomb-drop-origin,scores={vp.pitch-spd-cor=..-1},distance=..10] run scoreboard players add @s vp.pitch-spd-cor 6
execute as @s[tag=800kg] as @e[tag=bomb-drop-origin,scores={vp.yaw-spd-cor=..-1},distance=..10] run scoreboard players add @s vp.yaw-spd-cor 6
tag @e[tag=bomb-drop-origin,distance=..10] remove bomb-drop-origin

#対象召喚
scoreboard players operation #offset vp.reg1 = @s vp.ammunition1
scoreboard players operation #offset vp.reg1 %= #2 vp.Num
execute as @s[tag=250kg] if score #offset vp.reg1 matches 0 run summon armor_stand ^-0.5 ^-1 ^ {Tags:[g4m1-bomb,drop-init,dropping,plane-bomb,plane-parts,entity-nohit,250kg,bomb-normal],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:77,Unbreakable:1b}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
execute as @s[tag=250kg] if score #offset vp.reg1 matches 1 run summon armor_stand ^0.5 ^-1 ^ {Tags:[g4m1-bomb,drop-init,dropping,plane-bomb,plane-parts,entity-nohit,250kg,bomb-normal],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:77,Unbreakable:1b}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=drop-init,tag=250kg] vp.damage 1250

execute as @s[tag=has-torpedo] run summon armor_stand ^ ^-1 ^ {Tags:[g4m1-torpedo,drop-init,torpedo,plane-torpedo,plane-parts,entity-nohit,torpedo,bomb-normal],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:48,Unbreakable:1b}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=drop-init,tag=torpedo] vp.torp-damage 4000
scoreboard players set @e[tag=drop-init,tag=torpedo] vp.torp-speed 3

execute as @s[tag=800kg] run summon armor_stand ^ ^-1 ^ {Tags:[g4m1-bomb,drop-init,dropping,plane-bomb,plane-parts,entity-nohit,800kg,bomb-normal],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:118,Unbreakable:1b}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=drop-init,tag=torpedo] vp.torp-damage 4000


#スコア付与
scoreboard players operation @e[tag=drop-init,distance=..20] vp.speed = @s vp.speed
scoreboard players operation @e[tag=drop-init,distance=..20] vp.speed /= #1000 vp.Num
scoreboard players set @e[tag=drop-init,distance=..20] vp.age 1200
scoreboard players operation @e[tag=drop-init] vp.plane-id = @s vp.plane-id

#角度代入
execute store result entity @e[tag=drop-init,distance=..20,limit=1] Rotation[1] float 0.01 run scoreboard players get @s vp.AngX
execute store result entity @e[tag=drop-init,distance=..20,limit=1] Rotation[0] float 0.01 run scoreboard players get @s vp.AngY
scoreboard players operation #ang-x vp.reg1 = @s vp.AngX
scoreboard players remove #ang-x vp.reg1 9000
execute store result entity @e[tag=drop-init,distance=..20,limit=1] Pose.RightArm[2] float 0.01 run scoreboard players get #ang-x vp.reg1
execute as @e[tag=drop-init,distance=..20,limit=1] at @s run tp @s ~ ~ ~ ~90 ~

#残弾数減算
scoreboard players remove @s vp.ammunition1 1

#音
playsound minecraft:block.piston.contract ambient @a ~ ~ ~ 1 1.5

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

#終了処理
tag @s remove bombing-executer
tag @e[tag=drop-init,distance=..20] remove drop-init
scoreboard players set @p[scores={vp.rightClick=1..}] vp.rightClick 0
