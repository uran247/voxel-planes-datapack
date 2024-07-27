#爆弾テスト

#### torpedo 1個目召喚 ####
summon armor_stand ~ ~ ~ {Tags:[test-torpedo-init,plane-torpedo,entity-nohit,torpedo-normal,torpedo-dropping,drop-init],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:52}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=test-torpedo-init] vp.torp-damage 1250
scoreboard players set @e[tag=test-torpedo-init] vp.plane-id 1
execute as @e[tag=test-torpedo-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=test-torpedo-init] remove test-torpedo-init

#スコア付与
scoreboard players set @e[tag=drop-init,distance=..10] vp.speed 5
scoreboard players set @e[tag=drop-init,distance=..10] vp.age 1200

#角度代入
execute store result entity @e[tag=drop-init,distance=..10,limit=1] Rotation[1] float 0.01 run scoreboard players get #9000 vp.Num
execute store result entity @e[tag=drop-init,distance=..10,limit=1] Rotation[0] float 0.01 run scoreboard players get #0 vp.Num
execute as @e[tag=drop-init,distance=..10,limit=1] at @s run tp @s ~ ~ ~ ~90 ~

#x,y,z方向の速度スコア化
scoreboard players set @e[tag=drop-init,distance=..20] vp.speedX 0
scoreboard players set @e[tag=drop-init,distance=..20] vp.speedY 0
scoreboard players set @e[tag=drop-init,distance=..20] vp.speedZ -100
execute as @e[tag=drop-init,distance=..20] run scoreboard players operation @s vp.speedX *= @s vp.speed
execute as @e[tag=drop-init,distance=..20] run scoreboard players operation @s vp.speedY *= @s vp.speed
execute as @e[tag=drop-init,distance=..20] run scoreboard players operation @s vp.speedZ *= @s vp.speed
scoreboard players operation @e[tag=drop-init,distance=..20] vp.speedX /= #10 vp.Num
scoreboard players operation @e[tag=drop-init,distance=..20] vp.speedY /= #10 vp.Num
scoreboard players operation @e[tag=drop-init,distance=..20] vp.speedZ /= #10 vp.Num

#tellraw @p [{"score" : {"name":"@e[tag=drop-init,distance=..5,limit=1]", "objective":"speed"}}, {"text":" "}, {"score" : {"name":"@e[tag=drop-init,distance=..5,limit=1]", "objective":"age"}}]

#音
playsound minecraft:block.piston.contract ambient @a ~ ~ ~ 1 1.5

#終了処理
tag @e[tag=drop-init,distance=..10] remove drop-init
scoreboard players set @p[scores={vp.rightClick=1..}] vp.rightClick 0
