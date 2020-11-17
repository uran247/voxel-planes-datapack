#n1k2の爆弾召喚
#実行者：機体
#使用可能タグ target-parts n1k2-position-executer

#### 250kg爆弾1個目召喚 ####
execute if entity @s[tag=250kg-normal] run summon armor_stand ~ ~ ~ {Tags:["n1k2-bomb-right","n1k2",n1k2-init,plane,has-offset,has-model,plane-bomb,plane-parts,entity-nohit,250kg,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:77,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
#スコアセット
scoreboard players set @e[tag=n1k2-bomb-right,tag=n1k2-init] vp.offsetX -2600
scoreboard players set @e[tag=n1k2-bomb-right,tag=n1k2-init] vp.offsetY -700
scoreboard players set @e[tag=n1k2-bomb-right,tag=n1k2-init] vp.offsetZ 1200
scoreboard players set @e[tag=n1k2-bomb-right,tag=n1k2-init] vp.damage 1250
scoreboard players set @e[tag=n1k2-bomb-right,tag=n1k2-init] vp.acc-cor -1
scoreboard players set @e[tag=n1k2-bomb-right,tag=n1k2-init] vp.pitch-spd-cor -3
scoreboard players set @e[tag=n1k2-bomb-right,tag=n1k2-init] vp.yaw-spd-cor -1
scoreboard players operation @e[tag=n1k2-bomb-right,tag=n1k2-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=n1k2-bomb-right,tag=n1k2-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=n1k2-bomb-right,tag=n1k2-init] remove n1k2-init


#### 250kg爆弾2個目召喚 ####
execute if entity @s[tag=250kg-normal] run summon armor_stand ~ ~ ~ {Tags:["n1k2-bomb-left","n1k2",n1k2-init,plane,has-offset,has-model,plane-bomb,plane-parts,entity-nohit,250kg,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:77,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=n1k2-bomb-left,tag=n1k2-init] vp.offsetX 2600
scoreboard players set @e[tag=n1k2-bomb-left,tag=n1k2-init] vp.offsetY -700
scoreboard players set @e[tag=n1k2-bomb-left,tag=n1k2-init] vp.offsetZ 1200
scoreboard players set @e[tag=n1k2-bomb-left,tag=n1k2-init] vp.damage 1250
scoreboard players set @e[tag=n1k2-bomb-left,tag=n1k2-init] vp.acc-cor -1
scoreboard players set @e[tag=n1k2-bomb-left,tag=n1k2-init] vp.pitch-spd-cor -3
scoreboard players set @e[tag=n1k2-bomb-left,tag=n1k2-init] vp.yaw-spd-cor -1
scoreboard players operation @e[tag=n1k2-bomb-left,tag=n1k2-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=n1k2-bomb-left,tag=n1k2-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=n1k2-bomb-left,tag=n1k2-init] remove n1k2-init

#残弾スコア付与
scoreboard players set @s[tag=250kg-normal] vp.ammunition2 2
scoreboard players set #return vp.return 1
