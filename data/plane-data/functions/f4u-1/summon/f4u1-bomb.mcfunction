#f4u1の爆弾召喚
#実行者：機体
#使用可能タグ target-parts f4u1-position-executer

#### 1000lb爆弾1個目召喚 ####
execute if entity @s[tag=1000lb-normal] run summon armor_stand ~ ~ ~ {Tags:["f4u1-bomb-right","f4u1",f4u1-init,plane,has-offset,has-model,plane-bomb,plane-parts,entity-nohit,1000lb,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:122,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
#スコアセット
scoreboard players set @e[tag=f4u1-bomb-right,tag=f4u1-init] vp.offsetX -400
scoreboard players set @e[tag=f4u1-bomb-right,tag=f4u1-init] vp.offsetY -1000
scoreboard players set @e[tag=f4u1-bomb-right,tag=f4u1-init] vp.offsetZ 2100
scoreboard players set @e[tag=f4u1-bomb-right,tag=f4u1-init] vp.damage 2300
scoreboard players set @e[tag=f4u1-bomb-right,tag=f4u1-init] vp.acc-cor -1
scoreboard players set @e[tag=f4u1-bomb-right,tag=f4u1-init] vp.pitch-spd-cor -2
scoreboard players set @e[tag=f4u1-bomb-right,tag=f4u1-init] vp.yaw-spd-cor -2
scoreboard players operation @e[tag=f4u1-bomb-right,tag=f4u1-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=f4u1-bomb-right,tag=f4u1-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=f4u1-bomb-right,tag=f4u1-init] remove f4u1-init


#### 1000lb爆弾2個目召喚 ####
execute if entity @s[tag=1000lb-normal] run summon armor_stand ~ ~ ~ {Tags:["f4u1-bomb-left","f4u1",f4u1-init,plane,has-offset,has-model,plane-bomb,plane-parts,entity-nohit,1000lb,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:122,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=f4u1-bomb-left,tag=f4u1-init] vp.offsetX 1200
scoreboard players set @e[tag=f4u1-bomb-left,tag=f4u1-init] vp.offsetY -1000
scoreboard players set @e[tag=f4u1-bomb-left,tag=f4u1-init] vp.offsetZ 2100
scoreboard players set @e[tag=f4u1-bomb-left,tag=f4u1-init] vp.damage 2300
scoreboard players set @e[tag=f4u1-bomb-left,tag=f4u1-init] vp.acc-cor -1
scoreboard players set @e[tag=f4u1-bomb-left,tag=f4u1-init] vp.pitch-spd-cor -2
scoreboard players set @e[tag=f4u1-bomb-left,tag=f4u1-init] vp.yaw-spd-cor -2
scoreboard players operation @e[tag=f4u1-bomb-left,tag=f4u1-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=f4u1-bomb-left,tag=f4u1-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=f4u1-bomb-left,tag=f4u1-init] remove f4u1-init

#残弾スコア付与
scoreboard players set @s[tag=1000lb-normal] vp.ammunition2 2
scoreboard players set #return vp.return 1

