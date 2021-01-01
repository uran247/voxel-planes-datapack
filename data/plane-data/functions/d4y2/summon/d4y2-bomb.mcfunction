#> plane-data:d4y2/summon/d4y2-bomb
#
# 爆弾召喚
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

#### 60kg爆弾1個目召喚 ####
execute if entity @s[tag=60kg] run summon armor_stand ~ ~ ~ {Tags:[d4y2-bomb-right,"d4y2",weapon-init,plane,has-offset,has-model,plane-bomb,plane-parts,entity-nohit,60kg,bomb-normal],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:76,Unbreakable:1b}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
#スコアセット
scoreboard players set @e[tag=weapon-init] vp.offsetX -3100
scoreboard players set @e[tag=weapon-init] vp.offsetY -800
scoreboard players set @e[tag=weapon-init] vp.offsetZ 3000
scoreboard players set @e[tag=weapon-init] vp.damage 300
scoreboard players set @e[tag=weapon-init] vp.acc-cor -1
scoreboard players set @e[tag=weapon-init] vp.pitch-spd-cor -2
scoreboard players set @e[tag=weapon-init] vp.yaw-spd-cor -2
scoreboard players operation @e[tag=weapon-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=weapon-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=weapon-init] remove weapon-init


#### 60kg爆弾2個目召喚 ####
execute if entity @s[tag=60kg] run summon armor_stand ~ ~ ~ {Tags:[d4y2-bomb-left,"d4y2",weapon-init,plane,has-offset,has-model,plane-bomb,plane-parts,entity-nohit,60kg,bomb-normal],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:76,Unbreakable:1b}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=weapon-init] vp.offsetX 3100
scoreboard players set @e[tag=weapon-init] vp.offsetY -800
scoreboard players set @e[tag=weapon-init] vp.offsetZ 3000
scoreboard players set @e[tag=weapon-init] vp.damage 300
scoreboard players set @e[tag=weapon-init] vp.acc-cor -1
scoreboard players set @e[tag=weapon-init] vp.pitch-spd-cor -2
scoreboard players set @e[tag=weapon-init] vp.yaw-spd-cor -2
scoreboard players operation @e[tag=weapon-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=weapon-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=weapon-init] remove weapon-init

#### 250kg爆弾1個目召喚 ####
execute if entity @s[tag=250kg] run summon armor_stand ~ ~ ~ {Tags:[d4y2-bomb-center,"d4y2",weapon-init,plane,has-offset,has-model,plane-bomb,plane-parts,entity-nohit,250kg,bomb-normal],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:77,Unbreakable:1b}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=weapon-init] vp.offsetX 0
scoreboard players set @e[tag=weapon-init] vp.offsetY -800
scoreboard players set @e[tag=weapon-init] vp.offsetZ 3000
scoreboard players set @e[tag=weapon-init] vp.damage 1250
scoreboard players set @e[tag=weapon-init] vp.acc-cor -3
scoreboard players set @e[tag=weapon-init] vp.pitch-spd-cor -10
scoreboard players set @e[tag=weapon-init] vp.yaw-spd-cor -10
scoreboard players operation @e[tag=weapon-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=weapon-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=weapon-init] remove weapon-init

#### 500kg爆弾1個目召喚 ####
execute if entity @s[tag=500kg] run summon armor_stand ~ ~ ~ {Tags:[d4y2-bomb-center,"d4y2",weapon-init,plane,has-offset,has-model,plane-bomb,plane-parts,entity-nohit,500kg,bomb-normal],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:105,Unbreakable:1b}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=weapon-init] vp.offsetX 0
scoreboard players set @e[tag=weapon-init] vp.offsetY -800
scoreboard players set @e[tag=weapon-init] vp.offsetZ 3000
scoreboard players set @e[tag=weapon-init] vp.damage 2500
scoreboard players set @e[tag=weapon-init] vp.acc-cor -6
scoreboard players set @e[tag=weapon-init] vp.pitch-spd-cor -20
scoreboard players set @e[tag=weapon-init] vp.yaw-spd-cor -20
scoreboard players operation @e[tag=weapon-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=weapon-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=weapon-init] remove weapon-init

#残弾スコア付与
scoreboard players set @s[tag=60kg] vp.ammunition2 3
scoreboard players set @s[tag=!60kg] vp.ammunition2 1
scoreboard players set #return vp.return 1
