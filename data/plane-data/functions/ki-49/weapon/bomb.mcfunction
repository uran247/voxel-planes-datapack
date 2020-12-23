#爆弾投下 ki49
#実行者：機体

#実行者タグ付け
tag @s add bombing-executer

#id記録
scoreboard players operation #plane-id vp.reg1 = @s vp.plane-id

#ki49タグ削除
tag @e[tag=drop-init,distance=..20] remove plane

#機動力補正解除
execute as @e[distance=..10,tag=body] if score @s vp.plane-id = #plane-id vp.reg1 run tag @s add plane-parts-target
execute as @s[tag=250kg] as @e[distance=..10,tag=plane-parts-target,scores={vp.acc-cor=..-1}] run scoreboard players add @s vp.acc-cor 1
execute as @s[tag=250kg] as @e[distance=..10,tag=plane-parts-target,scores={vp.pitch-spd-cor=..-1}] run scoreboard players add @s vp.pitch-spd-cor 2
execute as @s[tag=250kg] as @e[distance=..10,tag=plane-parts-target,scores={vp.yaw-spd-cor=..-1}] run scoreboard players add @s vp.yaw-spd-cor 2
execute as @s[tag=500kg] as @e[distance=..10,tag=plane-parts-target,scores={vp.acc-cor=..-1}] run scoreboard players add @s vp.acc-cor 2
execute as @s[tag=500kg] as @e[distance=..10,tag=plane-parts-target,scores={vp.pitch-spd-cor=..-1}] run scoreboard players add @s vp.pitch-spd-cor 4
execute as @s[tag=500kg] as @e[distance=..10,tag=plane-parts-target,scores={vp.yaw-spd-cor=..-1}] run scoreboard players add @s vp.yaw-spd-cor 4
tag @e[distance=..10,tag=plane-parts-target] remove plane-parts-target

#対象召喚
scoreboard players operation #offset vp.reg1 = @s vp.ammunition1
scoreboard players operation #offset vp.reg1 %= #2 vp.Num
execute as @s[tag=250kg] if score #offset vp.reg1 matches 0 run summon armor_stand ^-0.5 ^-1 ^ {Tags:["ki49-bomb",drop-init,dropping,plane-bomb,plane-parts,entity-nohit,250kg,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:77,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
execute as @s[tag=250kg] if score #offset vp.reg1 matches 1 run summon armor_stand ^0.5 ^-1 ^ {Tags:["ki49-bomb",drop-init,dropping,plane-bomb,plane-parts,entity-nohit,250kg,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:77,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=drop-init] vp.damage 1250

execute as @s[tag=500kg] run summon armor_stand ^ ^-1 ^ {Tags:["ki49-bomb",drop-init,dropping,plane-bomb,plane-parts,entity-nohit,500kg,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:118,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=drop-init] vp.torp-damage 2500


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

#発射したならreload時間設定
execute if entity @e[tag=gun-init,distance=..20] run scoreboard players set @s vp.w1-cooltime 2

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
