#ki61の爆弾召喚
#実行者：機体
#使用可能タグ target-parts ki61-position-executer

#### 250kg爆弾1個目召喚 ####
execute if entity @s[tag=250kg-normal] run summon armor_stand ~ ~ ~ {Tags:["ki61-bomb-right","ki61",ki61-init,plane,has-offset,has-model,plane-bomb,plane-parts,entity-nohit,250kg,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:77,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
#スコアセット
scoreboard players set @e[tag=ki61-bomb-right,tag=ki61-init] offsetX -2600
scoreboard players set @e[tag=ki61-bomb-right,tag=ki61-init] offsetY -500
scoreboard players set @e[tag=ki61-bomb-right,tag=ki61-init] offsetZ 500
scoreboard players set @e[tag=ki61-bomb-right,tag=ki61-init] damage 1250
scoreboard players set @e[tag=ki61-bomb-right,tag=ki61-init] accelerate-cor -4
scoreboard players set @e[tag=ki61-bomb-right,tag=ki61-init] pitch-speed-cor -8
scoreboard players set @e[tag=ki61-bomb-right,tag=ki61-init] yaw-speed-cor -5
scoreboard players operation @e[tag=ki61-bomb-right,tag=ki61-init] plane-id = @s plane-id
execute as @e[tag=ki61-bomb-right,tag=ki61-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s plane-id
tag @e[tag=ki61-bomb-right,tag=ki61-init] remove ki61-init


#### 250kg爆弾2個目召喚 ####
execute if entity @s[tag=250kg-normal] run summon armor_stand ~ ~ ~ {Tags:["ki61-bomb-left","ki61",ki61-init,plane,has-offset,has-model,plane-bomb,plane-parts,entity-nohit,250kg,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:77,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=ki61-bomb-left,tag=ki61-init] offsetX 2600
scoreboard players set @e[tag=ki61-bomb-left,tag=ki61-init] offsetY -500
scoreboard players set @e[tag=ki61-bomb-left,tag=ki61-init] offsetZ 500
scoreboard players set @e[tag=ki61-bomb-left,tag=ki61-init] damage 1250
scoreboard players set @e[tag=ki61-bomb-left,tag=ki61-init] accelerate-cor -4
scoreboard players set @e[tag=ki61-bomb-left,tag=ki61-init] pitch-speed-cor -8
scoreboard players set @e[tag=ki61-bomb-left,tag=ki61-init] yaw-speed-cor -5
scoreboard players operation @e[tag=ki61-bomb-left,tag=ki61-init] plane-id = @s plane-id
execute as @e[tag=ki61-bomb-left,tag=ki61-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s plane-id
tag @e[tag=ki61-bomb-left,tag=ki61-init] remove ki61-init

#残弾スコア付与
scoreboard players set @s[tag=250kg-normal] ammunition3 2
scoreboard players set #return return 1
