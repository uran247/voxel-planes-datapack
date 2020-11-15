#爆弾テスト

#### 250kg爆弾1個目召喚 ####
summon armor_stand ~ ~ ~ {Tags:[test-bomb-init,plane-bomb,entity-nohit,250kg,bomb-normal,dropping,drop-init],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:77,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=test-bomb-init] vp.damage 1250
scoreboard players set @e[tag=test-bomb-init] vp.plane-id 1
execute as @e[tag=test-bomb-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=test-bomb-init] remove test-bomb-init

#スコア付与
scoreboard players set @e[tag=drop-init,distance=..10] vp.speed 2
scoreboard players set @e[tag=drop-init,distance=..10] vp.age 1200

#角度代入
execute store result entity @e[tag=drop-init,distance=..10,limit=1] Rotation[1] float 0.01 run scoreboard players get #9000 vp.Num
execute store result entity @e[tag=drop-init,distance=..10,limit=1] Rotation[0] float 0.01 run scoreboard players get #9000 vp.Num
execute as @e[tag=drop-init,distance=..10,limit=1] at @s run tp @s ~ ~ ~ ~90 ~

#tellraw @p [{"score" : {"name":"@e[tag=drop-init,distance=..5,limit=1]", "objective":"speed"}}, {"text":" "}, {"score" : {"name":"@e[tag=drop-init,distance=..5,limit=1]", "objective":"age"}}]

#音
playsound minecraft:block.piston.contract ambient @a ~ ~ ~ 1 1.5

#終了処理
tag @e[tag=drop-init,distance=..10] remove drop-init
scoreboard players set @p[scores={vp.rightClick=1..}] vp.rightClick 0
