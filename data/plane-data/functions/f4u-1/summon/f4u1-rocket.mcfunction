#> plane-data:f4u-1/summon/f4u1-rocket
#
# ロケット召喚
#
# @input
#   executer @e[tag=plane-root,tag=plane-position-executer]
#   entity @e[tag=target-parts]
#
# @within plane-data:f4u-1/f4u1-position

#> private
# @private
    #declare tag weapon-init #初期化処理中の武器エンティティであることを示す
    #declare score_holder #return #返り値を示す

#### ロケット1個目召喚 ####
execute if entity @s[tag=has-rocket] run summon armor_stand ~ ~ ~ {Tags:[f4u1-rocket-left1,"f4u1",weapon-init,plane,has-offset,has-model,plane-rocket,plane-parts,entity-nohit,10kg,rocket-normal],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:66,Unbreakable:1b}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=weapon-init] vp.offsetX 2900
scoreboard players set @e[tag=weapon-init] vp.offsetY -1000
scoreboard players set @e[tag=weapon-init] vp.offsetZ 2800
scoreboard players set @e[tag=weapon-init] vp.damage 500
scoreboard players set @e[tag=weapon-init] vp.acc-cor -1
scoreboard players set @e[tag=weapon-init] vp.pitch-spd-cor -1
scoreboard players set @e[tag=weapon-init] vp.yaw-spd-cor -1
scoreboard players operation @e[tag=weapon-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=weapon-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=weapon-init] remove weapon-init

#### ロケット2個目召喚 ####
execute if entity @s[tag=has-rocket] run summon armor_stand ~ ~ ~ {Tags:[f4u1-rocket-left2,"f4u1",weapon-init,plane,has-offset,has-model,plane-rocket,plane-parts,entity-nohit,10kg,rocket-normal],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:66,Unbreakable:1b}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=weapon-init] vp.offsetX 3300
scoreboard players set @e[tag=weapon-init] vp.offsetY -910
scoreboard players set @e[tag=weapon-init] vp.offsetZ 2800
scoreboard players set @e[tag=weapon-init] vp.damage 500
scoreboard players set @e[tag=weapon-init] vp.acc-cor -1
scoreboard players set @e[tag=weapon-init] vp.pitch-spd-cor -1
scoreboard players set @e[tag=weapon-init] vp.yaw-spd-cor -1
scoreboard players operation @e[tag=weapon-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=weapon-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=weapon-init] remove weapon-init

#### ロケット3個目召喚 ####
execute if entity @s[tag=has-rocket] run summon armor_stand ~ ~ ~ {Tags:[f4u1-rocket-left3,"f4u1",weapon-init,plane,has-offset,has-model,plane-rocket,plane-parts,entity-nohit,10kg,rocket-normal],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:66,Unbreakable:1b}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=weapon-init] vp.offsetX 3700
scoreboard players set @e[tag=weapon-init] vp.offsetY -820
scoreboard players set @e[tag=weapon-init] vp.offsetZ 2800
scoreboard players set @e[tag=weapon-init] vp.damage 500
scoreboard players set @e[tag=weapon-init] vp.acc-cor -1
scoreboard players set @e[tag=weapon-init] vp.pitch-spd-cor -1
scoreboard players set @e[tag=weapon-init] vp.yaw-spd-cor 0
scoreboard players operation @e[tag=weapon-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=weapon-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=weapon-init] remove weapon-init

#### ロケット4個目召喚 ####
execute if entity @s[tag=has-rocket] run summon armor_stand ~ ~ ~ {Tags:[f4u1-rocket-left4,"f4u1",weapon-init,plane,has-offset,has-model,plane-rocket,plane-parts,entity-nohit,10kg,rocket-normal],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:66,Unbreakable:1b}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=weapon-init] vp.offsetX 4100
scoreboard players set @e[tag=weapon-init] vp.offsetY -730
scoreboard players set @e[tag=weapon-init] vp.offsetZ 2800
scoreboard players set @e[tag=weapon-init] vp.damage 500
scoreboard players set @e[tag=weapon-init] vp.acc-cor -1
scoreboard players set @e[tag=weapon-init] vp.pitch-spd-cor -1
scoreboard players set @e[tag=weapon-init] vp.yaw-spd-cor 0
scoreboard players operation @e[tag=weapon-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=weapon-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=weapon-init] remove weapon-init

#### ロケット5個目召喚 ####
execute if entity @s[tag=has-rocket] run summon armor_stand ~ ~ ~ {Tags:[f4u1-rocket-right1,"f4u1",weapon-init,plane,has-offset,has-model,plane-rocket,plane-parts,entity-nohit,10kg,rocket-normal],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:66,Unbreakable:1b}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
#スコアセット
scoreboard players set @e[tag=weapon-init] vp.offsetX -2900
scoreboard players set @e[tag=weapon-init] vp.offsetY -1000
scoreboard players set @e[tag=weapon-init] vp.offsetZ 2800
scoreboard players set @e[tag=weapon-init] vp.damage 500
scoreboard players set @e[tag=weapon-init] vp.acc-cor -1
scoreboard players set @e[tag=weapon-init] vp.pitch-spd-cor -1
scoreboard players set @e[tag=weapon-init] vp.yaw-spd-cor -1
scoreboard players operation @e[tag=weapon-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=weapon-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=weapon-init] remove weapon-init

#### ロケット6個目召喚 ####
execute if entity @s[tag=has-rocket] run summon armor_stand ~ ~ ~ {Tags:[f4u1-rocket-right2,"f4u1",weapon-init,plane,has-offset,has-model,plane-rocket,plane-parts,entity-nohit,10kg,rocket-normal],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:66,Unbreakable:1b}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=weapon-init] vp.offsetX -3300
scoreboard players set @e[tag=weapon-init] vp.offsetY -910
scoreboard players set @e[tag=weapon-init] vp.offsetZ 2800
scoreboard players set @e[tag=weapon-init] vp.damage 500
scoreboard players set @e[tag=weapon-init] vp.acc-cor -1
scoreboard players set @e[tag=weapon-init] vp.pitch-spd-cor -1
scoreboard players set @e[tag=weapon-init] vp.yaw-spd-cor -1
scoreboard players operation @e[tag=weapon-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=weapon-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=weapon-init] remove weapon-init

#### ロケット7個目召喚 ####
execute if entity @s[tag=has-rocket] run summon armor_stand ~ ~ ~ {Tags:[f4u1-rocket-right3,"f4u1",weapon-init,plane,has-offset,has-model,plane-rocket,plane-parts,entity-nohit,10kg,rocket-normal],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:66,Unbreakable:1b}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=weapon-init] vp.offsetX -3700
scoreboard players set @e[tag=weapon-init] vp.offsetY -820
scoreboard players set @e[tag=weapon-init] vp.offsetZ 2800
scoreboard players set @e[tag=weapon-init] vp.damage 500
scoreboard players set @e[tag=weapon-init] vp.acc-cor -1
scoreboard players set @e[tag=weapon-init] vp.pitch-spd-cor -1
scoreboard players set @e[tag=weapon-init] vp.yaw-spd-cor 0
scoreboard players operation @e[tag=weapon-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=weapon-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=weapon-init] remove weapon-init

#### ロケット8個目召喚 ####
execute if entity @s[tag=has-rocket] run summon armor_stand ~ ~ ~ {Tags:[f4u1-rocket-right4,"f4u1",weapon-init,plane,has-offset,has-model,plane-rocket,plane-parts,entity-nohit,10kg,rocket-normal],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:66,Unbreakable:1b}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=weapon-init] vp.offsetX -4100
scoreboard players set @e[tag=weapon-init] vp.offsetY -730
scoreboard players set @e[tag=weapon-init] vp.offsetZ 2800
scoreboard players set @e[tag=weapon-init] vp.damage 500
scoreboard players set @e[tag=weapon-init] vp.acc-cor -1
scoreboard players set @e[tag=weapon-init] vp.pitch-spd-cor -1
scoreboard players set @e[tag=weapon-init] vp.yaw-spd-cor 0
scoreboard players operation @e[tag=weapon-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=weapon-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=weapon-init] remove weapon-init


#残弾スコア付与
scoreboard players set @s[tag=has-rocket] vp.ammunition3 8
