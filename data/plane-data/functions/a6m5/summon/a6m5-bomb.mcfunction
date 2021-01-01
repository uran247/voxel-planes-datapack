#> plane-data:a6m5/summon/a6m5-bomb
#
# 爆弾召喚
#
# @input
#   executer @e[tag=plane-root,tag=plane-position-executer]
#   entity @e[tag=target-parts]
#
# @within plane-data:a6m5/a6m5-position

#> private
# @private
    #declare tag weapon-init #初期化処理中の武器エンティティであることを示す
    #declare score_holder #return #返り値を示す

#### 60kg爆弾1個目召喚 ####
execute if entity @s[tag=60kg] run summon armor_stand ~ ~ ~ {Tags:[a6m5-bomb-right,"a6m5",weapon-init,plane,has-offset,has-model,plane-bomb,plane-parts,entity-nohit,60kg,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:76,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
#スコアセット
scoreboard players set @e[tag=weapon-init] vp.offsetX -3000
scoreboard players set @e[tag=weapon-init] vp.offsetY -550
scoreboard players set @e[tag=weapon-init] vp.offsetZ 500
scoreboard players set @e[tag=weapon-init] vp.damage 300
scoreboard players set @e[tag=weapon-init] vp.acc-cor -1
scoreboard players set @e[tag=weapon-init] vp.pitch-spd-cor -2
scoreboard players set @e[tag=weapon-init] vp.yaw-spd-cor -2
scoreboard players operation @e[tag=weapon-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=weapon-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=weapon-init] remove weapon-init


#### 60kg爆弾2個目召喚 ####
execute if entity @s[tag=60kg] run summon armor_stand ~ ~ ~ {Tags:[a6m5-bomb-left,"a6m5",weapon-init,plane,has-offset,has-model,plane-bomb,plane-parts,entity-nohit,60kg,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:76,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=weapon-init] vp.offsetX 3000
scoreboard players set @e[tag=weapon-init] vp.offsetY -550
scoreboard players set @e[tag=weapon-init] vp.offsetZ 500
scoreboard players set @e[tag=weapon-init] vp.damage 300
scoreboard players set @e[tag=weapon-init] vp.acc-cor -1
scoreboard players set @e[tag=weapon-init] vp.pitch-spd-cor -2
scoreboard players set @e[tag=weapon-init] vp.yaw-spd-cor -2
scoreboard players operation @e[tag=weapon-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=weapon-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=weapon-init] remove weapon-init

#残弾スコア付与
scoreboard players set @s[tag=60kg] vp.ammunition3 2
scoreboard players set #return vp.return 1
