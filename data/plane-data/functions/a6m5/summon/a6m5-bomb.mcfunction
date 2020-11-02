#a6m5の爆弾召喚
#実行者：機体
#使用可能タグ target-parts a6m5-position-executer

#### 60kg爆弾1個目召喚 ####
execute if entity @s[tag=60kg-normal] run summon armor_stand ~ ~ ~ {Tags:["a6m5-bomb-right","a6m5",a6m5-init,plane,has-offset,has-model,plane-bomb,plane-parts,entity-nohit,60kg,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:76,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
#スコアセット
scoreboard players set @e[tag=a6m5-bomb-right,tag=a6m5-init] offsetX -3000
scoreboard players set @e[tag=a6m5-bomb-right,tag=a6m5-init] offsetY -550
scoreboard players set @e[tag=a6m5-bomb-right,tag=a6m5-init] offsetZ 500
scoreboard players set @e[tag=a6m5-bomb-right,tag=a6m5-init] damage 300
scoreboard players set @e[tag=a6m5-bomb-right,tag=a6m5-init] accelerate-cor -1
scoreboard players set @e[tag=a6m5-bomb-right,tag=a6m5-init] pitch-speed-cor -2
scoreboard players set @e[tag=a6m5-bomb-right,tag=a6m5-init] yaw-speed-cor -2
scoreboard players operation @e[tag=a6m5-bomb-right,tag=a6m5-init] plane-id = @s plane-id
execute as @e[tag=a6m5-bomb-right,tag=a6m5-init] store result entity @s Attributes[{Name:"generic.knockbackResistance"}].Base double 1 run scoreboard players get @s plane-id
tag @e[tag=a6m5-bomb-right,tag=a6m5-init] remove a6m5-init


#### 60kg爆弾2個目召喚 ####
execute if entity @s[tag=60kg-normal] run summon armor_stand ~ ~ ~ {Tags:["a6m5-bomb-left","a6m5",a6m5-init,plane,has-offset,has-model,plane-bomb,plane-parts,entity-nohit,60kg,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:76,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=a6m5-bomb-left,tag=a6m5-init] offsetX 3000
scoreboard players set @e[tag=a6m5-bomb-left,tag=a6m5-init] offsetY -550
scoreboard players set @e[tag=a6m5-bomb-left,tag=a6m5-init] offsetZ 500
scoreboard players set @e[tag=a6m5-bomb-left,tag=a6m5-init] damage 300
scoreboard players set @e[tag=a6m5-bomb-left,tag=a6m5-init] accelerate-cor -1
scoreboard players set @e[tag=a6m5-bomb-left,tag=a6m5-init] pitch-speed-cor -2
scoreboard players set @e[tag=a6m5-bomb-left,tag=a6m5-init] yaw-speed-cor -2
scoreboard players operation @e[tag=a6m5-bomb-left,tag=a6m5-init] plane-id = @s plane-id
execute as @e[tag=a6m5-bomb-left,tag=a6m5-init] store result entity @s Attributes[{Name:"generic.knockbackResistance"}].Base double 1 run scoreboard players get @s plane-id
tag @e[tag=a6m5-bomb-left,tag=a6m5-init] remove a6m5-init

#残弾スコア付与
scoreboard players set @s[tag=60kg-normal] ammunition3 2
scoreboard players set #return return 1
