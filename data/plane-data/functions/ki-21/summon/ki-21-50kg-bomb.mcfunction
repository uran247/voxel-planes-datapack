#> plane-data:ki-21/summon/ki-21-50kg-bomb
#
# の爆弾召喚
#
# @input
#   executer @e[tag=plane-root,tag=plane-position-executer]
#   entity @e[tag=target-parts]
#
# @within plane-data:ki-21/ki-21-position

#> private
# @private
    #declare tag weapon-init #初期化処理中の武器エンティティであることを示す

#### 50kg爆弾1個目召喚 ####
execute if entity @s run summon armor_stand ~ ~ ~ {Tags:[ki21-bomb-1,"ki21",weapon-init,plane,has-model,has-offset,plane-bomb,plane-parts,entity-nohit,50kg,bomb-normal],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:84,Unbreakable:1b}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
#スコアセット
scoreboard players set @e[tag=weapon-init] vp.offsetX -1500
scoreboard players set @e[tag=weapon-init] vp.offsetY -400
scoreboard players set @e[tag=weapon-init] vp.offsetZ 2000
scoreboard players set @e[tag=weapon-init] vp.damage 250
scoreboard players set @e[tag=weapon-init] vp.pitch-spd-cor -3
scoreboard players set @e[tag=weapon-init] vp.yaw-spd-cor -3
scoreboard players operation @e[tag=weapon-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=weapon-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=weapon-init] remove weapon-init

#### 50kg爆弾2個目召喚 ####
execute if entity @s run summon armor_stand ~ ~ ~ {Tags:[ki21-bomb-2,"ki21",weapon-init,plane,has-model,has-offset,plane-bomb,plane-parts,entity-nohit,50kg,bomb-normal],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:84,Unbreakable:1b}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=weapon-init] vp.offsetX -1500
scoreboard players set @e[tag=weapon-init] vp.offsetY -400
scoreboard players set @e[tag=weapon-init] vp.offsetZ 3500
scoreboard players set @e[tag=weapon-init] vp.damage 250
scoreboard players set @e[tag=weapon-init] vp.pitch-spd-cor -2
scoreboard players set @e[tag=weapon-init] vp.yaw-spd-cor -2
scoreboard players operation @e[tag=weapon-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=weapon-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=weapon-init] remove weapon-init

#### 50kg爆弾3個目召喚 ####
execute if entity @s run summon armor_stand ~ ~ ~ {Tags:[ki21-bomb-3,"ki21",weapon-init,plane,has-model,has-offset,plane-bomb,plane-parts,entity-nohit,50kg,bomb-normal],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:84,Unbreakable:1b}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=weapon-init] vp.offsetX -1500
scoreboard players set @e[tag=weapon-init] vp.offsetY -400
scoreboard players set @e[tag=weapon-init] vp.offsetZ 5000
scoreboard players set @e[tag=weapon-init] vp.damage 250
scoreboard players set @e[tag=weapon-init] vp.acc-cor -1
scoreboard players set @e[tag=weapon-init] vp.pitch-spd-cor -3
scoreboard players set @e[tag=weapon-init] vp.yaw-spd-cor -3
scoreboard players operation @e[tag=weapon-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=weapon-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=weapon-init] remove weapon-init

#### 50kg爆弾4個目召喚 ####
execute if entity @s run summon armor_stand ~ ~ ~ {Tags:[ki21-bomb-4,"ki21",weapon-init,plane,has-model,has-offset,plane-bomb,plane-parts,entity-nohit,50kg,bomb-normal],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:84,Unbreakable:1b}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
#スコアセット
scoreboard players set @e[tag=weapon-init] vp.offsetX 1500
scoreboard players set @e[tag=weapon-init] vp.offsetY -400
scoreboard players set @e[tag=weapon-init] vp.offsetZ 2000
scoreboard players set @e[tag=weapon-init] vp.damage 250
scoreboard players set @e[tag=weapon-init] vp.pitch-spd-cor -2
scoreboard players set @e[tag=weapon-init] vp.yaw-spd-cor -2
scoreboard players operation @e[tag=weapon-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=weapon-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=weapon-init] remove weapon-init

#### 50kg爆弾5個目召喚 ####
execute if entity @s run summon armor_stand ~ ~ ~ {Tags:[ki21-bomb-5,"ki21",weapon-init,plane,has-model,has-offset,plane-bomb,plane-parts,entity-nohit,50kg,bomb-normal],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:84,Unbreakable:1b}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=weapon-init] vp.offsetX 1500
scoreboard players set @e[tag=weapon-init] vp.offsetY -400
scoreboard players set @e[tag=weapon-init] vp.offsetZ 3500
scoreboard players set @e[tag=weapon-init] vp.damage 250
scoreboard players set @e[tag=weapon-init] vp.pitch-spd-cor -3
scoreboard players set @e[tag=weapon-init] vp.yaw-spd-cor -3
scoreboard players operation @e[tag=weapon-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=weapon-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=weapon-init] remove weapon-init

#### 50kg爆弾6個目召喚 ####
execute if entity @s run summon armor_stand ~ ~ ~ {Tags:[ki21-bomb-6,"ki21",weapon-init,plane,has-model,has-offset,plane-bomb,plane-parts,entity-nohit,50kg,bomb-normal],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:84,Unbreakable:1b}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=weapon-init] vp.offsetX 1500
scoreboard players set @e[tag=weapon-init] vp.offsetY -400
scoreboard players set @e[tag=weapon-init] vp.offsetZ 5000
scoreboard players set @e[tag=weapon-init] vp.damage 250
scoreboard players set @e[tag=weapon-init] vp.acc-cor -1
scoreboard players set @e[tag=weapon-init] vp.pitch-spd-cor -3
scoreboard players set @e[tag=weapon-init] vp.yaw-spd-cor -3
scoreboard players operation @e[tag=weapon-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=weapon-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=weapon-init] remove weapon-init

#召喚しない爆弾の速度低下スコアをボディに付与
scoreboard players set @e[tag=body,tag=target-parts,limit=1] vp.acc-cor -3
scoreboard players set @e[tag=body,tag=target-parts,limit=1] vp.pitch-spd-cor -14
scoreboard players set @e[tag=body,tag=target-parts,limit=1] vp.yaw-spd-cor -14


#残弾スコア付与
scoreboard players set @s vp.ammunition1 20
