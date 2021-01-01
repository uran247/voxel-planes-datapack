#> plane-data:n1k2/summon/n1k2-bomb
#
# 爆弾召喚
#
# @input
#   executer @e[tag=plane-root,tag=plane-position-executer]
#   entity @e[tag=target-parts]
#
# @within plane-data:ki-61/ki-61-position

#> private
# @private
    #declare tag weapon-init #初期化処理中の武器エンティティであることを示す
    #declare score_holder #return #返り値を示す

#### 250kg爆弾1個目召喚 ####
execute if entity @s[tag=250kg] run summon armor_stand ~ ~ ~ {Tags:[n1k2-bomb-right,"n1k2",weapon-init,plane,has-offset,has-model,plane-bomb,plane-parts,entity-nohit,250kg,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:77,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
#スコアセット
scoreboard players set @e[tag=weapon-init] vp.offsetX -2600
scoreboard players set @e[tag=weapon-init] vp.offsetY -700
scoreboard players set @e[tag=weapon-init] vp.offsetZ 1200
scoreboard players set @e[tag=weapon-init] vp.damage 1250
scoreboard players set @e[tag=weapon-init] vp.acc-cor -1
scoreboard players set @e[tag=weapon-init] vp.pitch-spd-cor -3
scoreboard players set @e[tag=weapon-init] vp.yaw-spd-cor -1
scoreboard players operation @e[tag=weapon-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=weapon-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=weapon-init] remove weapon-init


#### 250kg爆弾2個目召喚 ####
execute if entity @s[tag=250kg] run summon armor_stand ~ ~ ~ {Tags:[n1k2-bomb-left,"n1k2",weapon-init,plane,has-offset,has-model,plane-bomb,plane-parts,entity-nohit,250kg,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:77,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=weapon-init] vp.offsetX 2600
scoreboard players set @e[tag=weapon-init] vp.offsetY -700
scoreboard players set @e[tag=weapon-init] vp.offsetZ 1200
scoreboard players set @e[tag=weapon-init] vp.damage 1250
scoreboard players set @e[tag=weapon-init] vp.acc-cor -1
scoreboard players set @e[tag=weapon-init] vp.pitch-spd-cor -3
scoreboard players set @e[tag=weapon-init] vp.yaw-spd-cor -1
scoreboard players operation @e[tag=weapon-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=weapon-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=weapon-init] remove weapon-init

#残弾スコア付与
scoreboard players set @s[tag=250kg] vp.ammunition2 2
scoreboard players set #return vp.return 1
