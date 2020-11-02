#爆弾投下 g4m1
#実行者：機体

#実行者タグ付け
tag @s add bombing-executer

#id記録
scoreboard players operation #plane-id reg1 = @s plane-id
#execute as @e[tag=plane-bomb,tag=plane,distance=..20,limit=1] if score @s plane-id = #plane-id reg1 run tag @s add drop-init
#tag @e[tag=drop-init,distance=..20] add dropping

#g4m1タグ削除
tag @e[tag=drop-init,distance=..20] remove plane

#機動力補正解除
execute as @e[distance=..10,tag=body] if score @s plane-id = #plane-id reg1 run tag @s add plane-parts-target
execute as @s[tag=250kg] as @e[distance=..10,tag=plane-parts-target,scores={accelerate-cor=..-1}] run scoreboard players add @s accelerate-cor 1
execute as @s[tag=250kg] as @e[distance=..10,tag=plane-parts-target,scores={pitch-speed-cor=..-1}] run scoreboard players add @s pitch-speed-cor 2
execute as @s[tag=250kg] as @e[distance=..10,tag=plane-parts-target,scores={yaw-speed-cor=..-1}] run scoreboard players add @s yaw-speed-cor 2
execute as @s[tag=800kg] as @e[distance=..10,tag=plane-parts-target,scores={accelerate-cor=..-1}] run scoreboard players add @s accelerate-cor 3
execute as @s[tag=800kg] as @e[distance=..10,tag=plane-parts-target,scores={pitch-speed-cor=..-1}] run scoreboard players add @s pitch-speed-cor 6
execute as @s[tag=800kg] as @e[distance=..10,tag=plane-parts-target,scores={yaw-speed-cor=..-1}] run scoreboard players add @s yaw-speed-cor 6
tag @e[distance=..10,tag=plane-parts-target] remove plane-parts-target

#対象召喚
scoreboard players operation #offset reg1 = @s ammunition1
scoreboard players operation #offset reg1 %= #2 Num
execute as @s[tag=250kg] if score #offset reg1 matches 0 run summon armor_stand ^-0.5 ^-1 ^ {Tags:["g4m1-bomb",drop-init,dropping,plane-bomb,plane-parts,entity-nohit,250kg,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:77,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
execute as @s[tag=250kg] if score #offset reg1 matches 1 run summon armor_stand ^0.5 ^-1 ^ {Tags:["g4m1-bomb",drop-init,dropping,plane-bomb,plane-parts,entity-nohit,250kg,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:77,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=g4m1-bomb,tag=drop-init,tag=250kg] damage 1250

execute as @s[tag=has-torpedo] run summon armor_stand ^ ^-1 ^ {Tags:["g4m1-torpedo",drop-init,torpedo,plane-torpedo,plane-parts,entity-nohit,torpedo,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:48,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=g4m1-torpedo,tag=drop-init,tag=torpedo] torp-damage 4000
scoreboard players set @e[tag=g4m1-torpedo,tag=drop-init,tag=torpedo] torp-speed 3

execute as @s[tag=800kg] run summon armor_stand ^ ^-1 ^ {Tags:["g4m1-bomb",drop-init,dropping,plane-bomb,plane-parts,entity-nohit,800kg,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:118,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=g4m1-torpedo,tag=drop-init,tag=torpedo] torp-damage 4000


#スコア付与
scoreboard players operation @e[tag=drop-init,distance=..20] speed = @s speed
scoreboard players operation @e[tag=drop-init,distance=..20] speed /= #1000 Num
scoreboard players set @e[tag=drop-init,distance=..20] age 1200
scoreboard players operation @e[tag=drop-init] plane-id = @s plane-id

#角度代入
execute store result entity @e[tag=drop-init,distance=..20,limit=1] Rotation[1] float 0.01 run scoreboard players get @s AngX
execute store result entity @e[tag=drop-init,distance=..20,limit=1] Rotation[0] float 0.01 run scoreboard players get @s AngY
scoreboard players operation #ang-x reg1 = @s AngX
scoreboard players remove #ang-x reg1 9000
execute store result entity @e[tag=drop-init,distance=..20,limit=1] Pose.RightArm[2] float 0.01 run scoreboard players get #ang-x reg1
execute as @e[tag=drop-init,distance=..20,limit=1] at @s run tp @s ~ ~ ~ ~90 ~

#発射したならreload時間設定
execute if entity @e[tag=gun-init,distance=..20] run scoreboard players set @s w1-reload 2

#残弾数減算
scoreboard players remove @s ammunition1 1

#音
playsound minecraft:block.piston.contract ambient @a ~ ~ ~ 1 1.5

#x,y,z方向の速度スコア化
scoreboard players operation @e[tag=drop-init,distance=..20] speedX = @s speedX
scoreboard players operation @e[tag=drop-init,distance=..20] speedY = @s speedY
scoreboard players operation @e[tag=drop-init,distance=..20] speedZ = @s speedZ
execute as @e[tag=drop-init,distance=..20] run scoreboard players operation @s speedX *= @s speed
execute as @e[tag=drop-init,distance=..20] run scoreboard players operation @s speedY *= @s speed
execute as @e[tag=drop-init,distance=..20] run scoreboard players operation @s speedZ *= @s speed
scoreboard players operation @e[tag=drop-init,distance=..20] speedX /= #10 Num
scoreboard players operation @e[tag=drop-init,distance=..20] speedY /= #10 Num
scoreboard players operation @e[tag=drop-init,distance=..20] speedZ /= #10 Num
#tellraw @p [{"score" : {"name":"@s", "objective":"speedX"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"speedY"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"speedZ"}}]
#execute as @e[tag=drop-init,distance=..20] run tellraw @p [{"score" : {"name":"@s", "objective":"speedX"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"speedY"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"speedZ"}}]

#終了処理
tag @s remove bombing-executer
tag @e[tag=drop-init,distance=..20] remove drop-init
scoreboard players set @p[scores={rightClick=1..}] rightClick 0
