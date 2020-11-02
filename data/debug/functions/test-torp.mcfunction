#爆弾テスト

#### 250kg爆弾1個目召喚 ####
summon armor_stand ~ ~ ~ {Tags:[test-torpedo-init,plane-torpedo,entity-nohit,250kg,torpedo-normal,torpedo,torpedo-init],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:48,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256,Rotation:[180f,0f]}
scoreboard players set @e[tag=test-torpedo-init] torp-damage 8000
scoreboard players set @e[tag=test-torpedo-init] damage 0
scoreboard players set @e[tag=test-torpedo-init] plane-id 1
execute as @e[tag=test-torpedo-init] store result entity @s Attributes[{Name:"generic.knockbackResistance"}].Base double 1 run scoreboard players get @s plane-id
tag @e[tag=test-torpedo-init] remove test-torpedo-init

#スコア付与
scoreboard players set @e[tag=torpedo-init,distance=..10] speed 2
scoreboard players set @e[tag=torpedo-init,distance=..10] age 1200

#角度代入
execute store result entity @e[tag=torpedo-init,distance=..10,limit=1] Rotation[1] float 0.01 run scoreboard players get #0 Num
execute store result entity @e[tag=torpedo-init,distance=..10,limit=1] Rotation[0] float 0.01 run scoreboard players get #9000 Num
execute as @e[tag=torpedo-init,distance=..10,limit=1] at @s run tp @s ~ ~ ~ ~90 ~

#tellraw @p [{"score" : {"name":"@e[tag=torpedo-init,distance=..5,limit=1]", "objective":"speed"}}, {"text":" "}, {"score" : {"name":"@e[tag=torpedo-init,distance=..5,limit=1]", "objective":"age"}}]

#音
playsound minecraft:block.piston.contract ambient @a ~ ~ ~ 1 1.5

#終了処理
tag @e[tag=torpedo-init,distance=..10] remove torpedo-init
scoreboard players set @p[scores={rightClick=1..}] rightClick 0
