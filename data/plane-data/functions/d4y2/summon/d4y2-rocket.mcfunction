#d4y2のロケット召喚
#実行者：機体
#使用可能タグ target-parts d4y2-position-executer

#### ロケット1個目召喚 ####
execute if entity @s[tag=has-rocket,tag=rocket-normal] run summon armor_stand ~ ~ ~ {Tags:["d4y2-rocket-right1","d4y2",d4y2-init,plane,has-offset,has-model,plane-rocket,plane-parts,entity-nohit,10kg,rocket-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:106,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
#スコアセット
scoreboard players set @e[tag=d4y2-rocket-right1,tag=d4y2-init] vp.offsetX -3100
scoreboard players set @e[tag=d4y2-rocket-right1,tag=d4y2-init] vp.offsetY -600
scoreboard players set @e[tag=d4y2-rocket-right1,tag=d4y2-init] vp.offsetZ 3000
scoreboard players set @e[tag=d4y2-rocket-right1,tag=d4y2-init] vp.damage 50
scoreboard players set @e[tag=d4y2-rocket-right1,tag=d4y2-init] vp.acc-cor -1
scoreboard players set @e[tag=d4y2-rocket-right1,tag=d4y2-init] vp.pitch-spd-cor -1
scoreboard players set @e[tag=d4y2-rocket-right1,tag=d4y2-init] vp.yaw-spd-cor -1
scoreboard players operation @e[tag=d4y2-rocket-right1,tag=d4y2-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=d4y2-rocket-right1,tag=d4y2-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=d4y2-rocket-right1,tag=d4y2-init] remove d4y2-init

#### ロケット2個目召喚 ####
execute if entity @s[tag=has-rocket,tag=rocket-normal] run summon armor_stand ~ ~ ~ {Tags:["d4y2-rocket-left1","d4y2",d4y2-init,plane,has-offset,has-model,plane-rocket,plane-parts,entity-nohit,10kg,rocket-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:106,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=d4y2-rocket-left1,tag=d4y2-init] vp.offsetX 3100
scoreboard players set @e[tag=d4y2-rocket-left1,tag=d4y2-init] vp.offsetY -600
scoreboard players set @e[tag=d4y2-rocket-left1,tag=d4y2-init] vp.offsetZ 3000
scoreboard players set @e[tag=d4y2-rocket-left1,tag=d4y2-init] vp.damage 50
scoreboard players set @e[tag=d4y2-rocket-left1,tag=d4y2-init] vp.acc-cor -1
scoreboard players set @e[tag=d4y2-rocket-left1,tag=d4y2-init] vp.pitch-spd-cor -1
scoreboard players set @e[tag=d4y2-rocket-left1,tag=d4y2-init] vp.yaw-spd-cor -1
scoreboard players operation @e[tag=d4y2-rocket-left1,tag=d4y2-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=d4y2-rocket-left1,tag=d4y2-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
#tellraw @p [{"score" : {"name":"@e[tag=d4y2-rocket-left1,tag=d4y2-init,limit=1]", "objective":"plane-id "}}, {"text":" "}, {"score" : {"name":"@s", "objective":"plane-id "}}]
tag @e[tag=d4y2-rocket-left1,tag=d4y2-init] remove d4y2-init

#### ロケット3個目召喚 ####
execute if entity @s[tag=has-rocket,tag=rocket-normal] run summon armor_stand ~ ~ ~ {Tags:["d4y2-rocket-right2","d4y2",d4y2-init,plane,has-offset,has-model,plane-rocket,plane-parts,entity-nohit,10kg,rocket-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:106,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
#スコアセット
scoreboard players set @e[tag=d4y2-rocket-right2,tag=d4y2-init] vp.offsetX -3500
scoreboard players set @e[tag=d4y2-rocket-right2,tag=d4y2-init] vp.offsetY -600
scoreboard players set @e[tag=d4y2-rocket-right2,tag=d4y2-init] vp.offsetZ 3000
scoreboard players set @e[tag=d4y2-rocket-right2,tag=d4y2-init] vp.damage 50
scoreboard players set @e[tag=d4y2-rocket-right2,tag=d4y2-init] vp.acc-cor -1
scoreboard players set @e[tag=d4y2-rocket-right2,tag=d4y2-init] vp.pitch-spd-cor -1
scoreboard players set @e[tag=d4y2-rocket-right2,tag=d4y2-init] vp.yaw-spd-cor -1
scoreboard players operation @e[tag=d4y2-rocket-right2,tag=d4y2-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=d4y2-rocket-right2,tag=d4y2-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=d4y2-rocket-right2,tag=d4y2-init] remove d4y2-init


#### ロケット4個目召喚 ####
execute if entity @s[tag=has-rocket,tag=rocket-normal] run summon armor_stand ~ ~ ~ {Tags:["d4y2-rocket-left2","d4y2",d4y2-init,plane,has-offset,has-model,plane-rocket,plane-parts,entity-nohit,10kg,rocket-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:106,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=d4y2-rocket-left2,tag=d4y2-init] vp.offsetX 3500
scoreboard players set @e[tag=d4y2-rocket-left2,tag=d4y2-init] vp.offsetY -600
scoreboard players set @e[tag=d4y2-rocket-left2,tag=d4y2-init] vp.offsetZ 3000
scoreboard players set @e[tag=d4y2-rocket-left2,tag=d4y2-init] vp.damage 50
scoreboard players set @e[tag=d4y2-rocket-left2,tag=d4y2-init] vp.acc-cor -1
scoreboard players set @e[tag=d4y2-rocket-left2,tag=d4y2-init] vp.pitch-spd-cor -1
scoreboard players set @e[tag=d4y2-rocket-left2,tag=d4y2-init] vp.yaw-spd-cor -1
scoreboard players operation @e[tag=d4y2-rocket-left2,tag=d4y2-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=d4y2-rocket-left2,tag=d4y2-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=d4y2-rocket-left2,tag=d4y2-init] remove d4y2-init


#残弾スコア付与
scoreboard players set @s[tag=has-rocket] vp.ammunition4 4
