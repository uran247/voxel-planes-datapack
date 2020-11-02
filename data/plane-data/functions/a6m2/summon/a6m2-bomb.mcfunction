#a6m2の爆弾召喚
#実行者：機体
#使用可能タグ target-parts a6m2-position-executer

#### 60kg爆弾1個目召喚 ####
execute if entity @s[tag=60kg-normal] run summon armor_stand ~ ~ ~ {Tags:["a6m2-bomb-right","a6m2",a6m2-init,plane,has-offset,has-model,plane-bomb,plane-parts,entity-nohit,60kg,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:76,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
#スコアセット
scoreboard players set @e[tag=a6m2-bomb-right,tag=a6m2-init] offsetX -3100
scoreboard players set @e[tag=a6m2-bomb-right,tag=a6m2-init] offsetY -600
scoreboard players set @e[tag=a6m2-bomb-right,tag=a6m2-init] offsetZ 1000
scoreboard players set @e[tag=a6m2-bomb-right,tag=a6m2-init] damage 300
scoreboard players set @e[tag=a6m2-bomb-right,tag=a6m2-init] accelerate-cor -1
scoreboard players set @e[tag=a6m2-bomb-right,tag=a6m2-init] pitch-speed-cor -2
scoreboard players set @e[tag=a6m2-bomb-right,tag=a6m2-init] yaw-speed-cor -2
scoreboard players operation @e[tag=a6m2-bomb-right,tag=a6m2-init] plane-id = @s plane-id
execute as @e[tag=a6m2-bomb-right,tag=a6m2-init] store result entity @s Attributes[{Name:"generic.knockbackResistance"}].Base double 1 run scoreboard players get @s plane-id
tag @e[tag=a6m2-bomb-right,tag=a6m2-init] remove a6m2-init


#### 60kg爆弾2個目召喚 ####
execute if entity @s[tag=60kg-normal] run summon armor_stand ~ ~ ~ {Tags:["a6m2-bomb-left","a6m2",a6m2-init,plane,has-offset,has-model,plane-bomb,plane-parts,entity-nohit,60kg,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:76,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=a6m2-bomb-left,tag=a6m2-init] offsetX 3100
scoreboard players set @e[tag=a6m2-bomb-left,tag=a6m2-init] offsetY -600
scoreboard players set @e[tag=a6m2-bomb-left,tag=a6m2-init] offsetZ 1000
scoreboard players set @e[tag=a6m2-bomb-left,tag=a6m2-init] damage 300
scoreboard players set @e[tag=a6m2-bomb-left,tag=a6m2-init] accelerate-cor -1
scoreboard players set @e[tag=a6m2-bomb-left,tag=a6m2-init] pitch-speed-cor -2
scoreboard players set @e[tag=a6m2-bomb-left,tag=a6m2-init] yaw-speed-cor -2
scoreboard players operation @e[tag=a6m2-bomb-left,tag=a6m2-init] plane-id = @s plane-id
execute as @e[tag=a6m2-bomb-left,tag=a6m2-init] store result entity @s Attributes[{Name:"generic.knockbackResistance"}].Base double 1 run scoreboard players get @s plane-id
tag @e[tag=a6m2-bomb-left,tag=a6m2-init] remove a6m2-init

#残弾スコア付与
scoreboard players set @s[tag=60kg-normal] ammunition3 2
scoreboard players set #return return 1
