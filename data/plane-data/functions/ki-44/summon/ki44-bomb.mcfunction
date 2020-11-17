#ki44の爆弾召喚
#実行者：機体
#使用可能タグ target-parts ki44-position-executer

#### 100kg爆弾1個目召喚 ####
execute if entity @s[tag=100kg-normal] run summon armor_stand ~ ~ ~ {Tags:["ki44-bomb-right","ki44",ki44-init,plane,has-offset,has-model,plane-bomb,plane-parts,entity-nohit,100kg,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:117,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
#スコアセット
scoreboard players set @e[tag=ki44-bomb-right,tag=ki44-init] vp.offsetX -2600
scoreboard players set @e[tag=ki44-bomb-right,tag=ki44-init] vp.offsetY -700
scoreboard players set @e[tag=ki44-bomb-right,tag=ki44-init] vp.offsetZ 1500
scoreboard players set @e[tag=ki44-bomb-right,tag=ki44-init] vp.damage 500
scoreboard players set @e[tag=ki44-bomb-right,tag=ki44-init] vp.acc-cor -1
scoreboard players set @e[tag=ki44-bomb-right,tag=ki44-init] vp.pitch-spd-cor -3
scoreboard players set @e[tag=ki44-bomb-right,tag=ki44-init] vp.yaw-spd-cor -1
scoreboard players operation @e[tag=ki44-bomb-right,tag=ki44-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=ki44-bomb-right,tag=ki44-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=ki44-bomb-right,tag=ki44-init] remove ki44-init


#### 100kg爆弾2個目召喚 ####
execute if entity @s[tag=100kg-normal] run summon armor_stand ~ ~ ~ {Tags:["ki44-bomb-left","ki44",ki44-init,plane,has-offset,has-model,plane-bomb,plane-parts,entity-nohit,100kg,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:117,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=ki44-bomb-left,tag=ki44-init] vp.offsetX 2600
scoreboard players set @e[tag=ki44-bomb-left,tag=ki44-init] vp.offsetY -700
scoreboard players set @e[tag=ki44-bomb-left,tag=ki44-init] vp.offsetZ 1500
scoreboard players set @e[tag=ki44-bomb-left,tag=ki44-init] vp.damage 500
scoreboard players set @e[tag=ki44-bomb-left,tag=ki44-init] vp.acc-cor -1
scoreboard players set @e[tag=ki44-bomb-left,tag=ki44-init] vp.pitch-spd-cor -3
scoreboard players set @e[tag=ki44-bomb-left,tag=ki44-init] vp.yaw-spd-cor -1
scoreboard players operation @e[tag=ki44-bomb-left,tag=ki44-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=ki44-bomb-left,tag=ki44-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=ki44-bomb-left,tag=ki44-init] remove ki44-init

#残弾スコア付与
scoreboard players set @s[tag=100kg-normal] vp.ammunition3 2
scoreboard players set #return vp.return 1
