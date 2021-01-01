#> plane-data:fw190d-9/summon/fw190d9-bomb
#
# 爆弾召喚
#
# @input
#   executer @e[tag=plane-root,tag=plane-position-executer]
#   entity @e[tag=target-parts]
#
# @within plane-data:fw190d-9/fw190d9-position

#> private
# @private
    #declare tag weapon-init #初期化処理中の武器エンティティであることを示す
    #declare score_holder #return #返り値を示す

#### 500kg爆弾1個目召喚 ####
execute if entity @s[tag=500kg] run summon armor_stand ~ ~ ~ {Tags:[fw190d9-bomb,"fw190d9",weapon-init,plane,has-offset,has-model,plane-bomb,plane-parts,entity-nohit,500kg,bomb-normal],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:124,Unbreakable:1b}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
#スコアセット
scoreboard players set @e[tag=weapon-init] vp.offsetX 0
scoreboard players set @e[tag=weapon-init] vp.offsetY -700
scoreboard players set @e[tag=weapon-init] vp.offsetZ 300
scoreboard players set @e[tag=weapon-init] vp.damage 2500
scoreboard players set @e[tag=weapon-init] vp.acc-cor -6
scoreboard players set @e[tag=weapon-init] vp.pitch-spd-cor -20
scoreboard players set @e[tag=weapon-init] vp.yaw-spd-cor -12
scoreboard players operation @e[tag=weapon-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=weapon-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=weapon-init] remove weapon-init

#残弾スコア付与
scoreboard players set @s[tag=500kg] vp.ammunition3 1
scoreboard players set #return vp.return 1

