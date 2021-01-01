#> plane-data:d4y2/summon/d4y2-rocket
#
# ロケット召喚
#
# @input
#   executer @e[tag=plane-root,tag=plane-position-executer]
#   entity @e[tag=target-parts]
#
# @within plane-data:d4y2/d4y2-position

#> private
# @private
    #declare tag weapon-init #初期化処理中の武器エンティティであることを示す
    #declare score_holder #return #返り値を示す

#### ロケット1個目召喚 ####
execute if entity @s[tag=has-rocket] run summon armor_stand ~ ~ ~ {Tags:[d4y2-rocket-right1,"d4y2",weapon-init,plane,has-offset,has-model,plane-rocket,plane-parts,entity-nohit,10kg,rocket-normal],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:106,Unbreakable:1b}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
#スコアセット
scoreboard players set @e[tag=weapon-init] vp.offsetX -3100
scoreboard players set @e[tag=weapon-init] vp.offsetY -600
scoreboard players set @e[tag=weapon-init] vp.offsetZ 3000
scoreboard players set @e[tag=weapon-init] vp.damage 50
scoreboard players set @e[tag=weapon-init] vp.acc-cor -1
scoreboard players set @e[tag=weapon-init] vp.pitch-spd-cor -1
scoreboard players set @e[tag=weapon-init] vp.yaw-spd-cor -1
scoreboard players operation @e[tag=weapon-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=weapon-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=weapon-init] remove weapon-init

#### ロケット2個目召喚 ####
execute if entity @s[tag=has-rocket] run summon armor_stand ~ ~ ~ {Tags:[d4y2-rocket-left1,"d4y2",weapon-init,plane,has-offset,has-model,plane-rocket,plane-parts,entity-nohit,10kg,rocket-normal],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:106,Unbreakable:1b}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=weapon-init] vp.offsetX 3100
scoreboard players set @e[tag=weapon-init] vp.offsetY -600
scoreboard players set @e[tag=weapon-init] vp.offsetZ 3000
scoreboard players set @e[tag=weapon-init] vp.damage 50
scoreboard players set @e[tag=weapon-init] vp.acc-cor -1
scoreboard players set @e[tag=weapon-init] vp.pitch-spd-cor -1
scoreboard players set @e[tag=weapon-init] vp.yaw-spd-cor -1
scoreboard players operation @e[tag=weapon-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=weapon-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
#tellraw @p [{"score" : {"name":"@e[tag=weapon-init,limit=1]", "objective":"plane-id "}}, {"text":" "}, {"score" : {"name":"@s", "objective":"plane-id "}}]
tag @e[tag=weapon-init] remove weapon-init

#### ロケット3個目召喚 ####
execute if entity @s[tag=has-rocket] run summon armor_stand ~ ~ ~ {Tags:[d4y2-rocket-right2,"d4y2",weapon-init,plane,has-offset,has-model,plane-rocket,plane-parts,entity-nohit,10kg,rocket-normal],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:106,Unbreakable:1b}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
#スコアセット
scoreboard players set @e[tag=weapon-init] vp.offsetX -3500
scoreboard players set @e[tag=weapon-init] vp.offsetY -600
scoreboard players set @e[tag=weapon-init] vp.offsetZ 3000
scoreboard players set @e[tag=weapon-init] vp.damage 50
scoreboard players set @e[tag=weapon-init] vp.acc-cor -1
scoreboard players set @e[tag=weapon-init] vp.pitch-spd-cor -1
scoreboard players set @e[tag=weapon-init] vp.yaw-spd-cor -1
scoreboard players operation @e[tag=weapon-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=weapon-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=weapon-init] remove weapon-init


#### ロケット4個目召喚 ####
execute if entity @s[tag=has-rocket] run summon armor_stand ~ ~ ~ {Tags:[d4y2-rocket-left2,"d4y2",weapon-init,plane,has-offset,has-model,plane-rocket,plane-parts,entity-nohit,10kg,rocket-normal],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:106,Unbreakable:1b}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=weapon-init] vp.offsetX 3500
scoreboard players set @e[tag=weapon-init] vp.offsetY -600
scoreboard players set @e[tag=weapon-init] vp.offsetZ 3000
scoreboard players set @e[tag=weapon-init] vp.damage 50
scoreboard players set @e[tag=weapon-init] vp.acc-cor -1
scoreboard players set @e[tag=weapon-init] vp.pitch-spd-cor -1
scoreboard players set @e[tag=weapon-init] vp.yaw-spd-cor -1
scoreboard players operation @e[tag=weapon-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=weapon-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=weapon-init] remove weapon-init


#残弾スコア付与
scoreboard players set @s[tag=has-rocket] vp.ammunition4 4
