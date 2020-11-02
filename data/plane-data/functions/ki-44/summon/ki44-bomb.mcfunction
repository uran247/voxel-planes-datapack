#ki44の爆弾召喚
#実行者：機体
#使用可能タグ target-parts ki44-position-executer

#### 100kg爆弾1個目召喚 ####
execute if entity @s[tag=100kg-normal] run summon armor_stand ~ ~ ~ {Tags:["ki44-bomb-right","ki44",ki44-init,plane,has-offset,has-model,plane-bomb,plane-parts,entity-nohit,100kg,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:117,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
#スコアセット
scoreboard players set @e[tag=ki44-bomb-right,tag=ki44-init] offsetX -2600
scoreboard players set @e[tag=ki44-bomb-right,tag=ki44-init] offsetY -700
scoreboard players set @e[tag=ki44-bomb-right,tag=ki44-init] offsetZ 1500
scoreboard players set @e[tag=ki44-bomb-right,tag=ki44-init] damage 500
scoreboard players set @e[tag=ki44-bomb-right,tag=ki44-init] accelerate-cor -1
scoreboard players set @e[tag=ki44-bomb-right,tag=ki44-init] pitch-speed-cor -3
scoreboard players set @e[tag=ki44-bomb-right,tag=ki44-init] yaw-speed-cor -1
scoreboard players operation @e[tag=ki44-bomb-right,tag=ki44-init] plane-id = @s plane-id
execute as @e[tag=ki44-bomb-right,tag=ki44-init] store result entity @s Attributes[{Name:"generic.knockbackResistance"}].Base double 1 run scoreboard players get @s plane-id
tag @e[tag=ki44-bomb-right,tag=ki44-init] remove ki44-init


#### 100kg爆弾2個目召喚 ####
execute if entity @s[tag=100kg-normal] run summon armor_stand ~ ~ ~ {Tags:["ki44-bomb-left","ki44",ki44-init,plane,has-offset,has-model,plane-bomb,plane-parts,entity-nohit,100kg,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:117,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=ki44-bomb-left,tag=ki44-init] offsetX 2600
scoreboard players set @e[tag=ki44-bomb-left,tag=ki44-init] offsetY -700
scoreboard players set @e[tag=ki44-bomb-left,tag=ki44-init] offsetZ 1500
scoreboard players set @e[tag=ki44-bomb-left,tag=ki44-init] damage 500
scoreboard players set @e[tag=ki44-bomb-left,tag=ki44-init] accelerate-cor -1
scoreboard players set @e[tag=ki44-bomb-left,tag=ki44-init] pitch-speed-cor -3
scoreboard players set @e[tag=ki44-bomb-left,tag=ki44-init] yaw-speed-cor -1
scoreboard players operation @e[tag=ki44-bomb-left,tag=ki44-init] plane-id = @s plane-id
execute as @e[tag=ki44-bomb-left,tag=ki44-init] store result entity @s Attributes[{Name:"generic.knockbackResistance"}].Base double 1 run scoreboard players get @s plane-id
tag @e[tag=ki44-bomb-left,tag=ki44-init] remove ki44-init

#残弾スコア付与
scoreboard players set @s[tag=100kg-normal] ammunition3 2
scoreboard players set #return return 1
