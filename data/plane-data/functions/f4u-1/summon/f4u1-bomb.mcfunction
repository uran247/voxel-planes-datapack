#> plane-data:f4u-1/summon/f4u1-bomb
#
# 爆弾召喚
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

#### 1000lb爆弾1個目召喚 ####
execute if entity @s[tag=1000lb] run summon armor_stand ~ ~ ~ {Tags:[f4u1-bomb-right,"f4u1",weapon-init,plane,has-offset,has-model,plane-bomb,plane-parts,entity-nohit,1000lb,bomb-normal],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:122,Unbreakable:1b}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
#スコアセット
scoreboard players set @e[tag=weapon-init] vp.offsetX -400
scoreboard players set @e[tag=weapon-init] vp.offsetY -1000
scoreboard players set @e[tag=weapon-init] vp.offsetZ 2100
scoreboard players set @e[tag=weapon-init] vp.damage 2300
scoreboard players set @e[tag=weapon-init] vp.acc-cor -5
scoreboard players set @e[tag=weapon-init] vp.pitch-spd-cor -8
scoreboard players set @e[tag=weapon-init] vp.yaw-spd-cor -4
scoreboard players operation @e[tag=weapon-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=weapon-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=weapon-init] remove weapon-init


#### 1000lb爆弾2個目召喚 ####
execute if entity @s[tag=1000lb] run summon armor_stand ~ ~ ~ {Tags:[f4u1-bomb-left,"f4u1",weapon-init,plane,has-offset,has-model,plane-bomb,plane-parts,entity-nohit,1000lb,bomb-normal],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:122,Unbreakable:1b}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=weapon-init] vp.offsetX 1200
scoreboard players set @e[tag=weapon-init] vp.offsetY -1000
scoreboard players set @e[tag=weapon-init] vp.offsetZ 2100
scoreboard players set @e[tag=weapon-init] vp.damage 2300
scoreboard players set @e[tag=weapon-init] vp.acc-cor -5
scoreboard players set @e[tag=weapon-init] vp.pitch-spd-cor -8
scoreboard players set @e[tag=weapon-init] vp.yaw-spd-cor -4
scoreboard players operation @e[tag=weapon-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=weapon-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=weapon-init] remove weapon-init

#残弾スコア付与
scoreboard players set @s[tag=1000lb] vp.ammunition2 2
scoreboard players set #return vp.return 1

