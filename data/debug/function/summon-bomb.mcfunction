summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:132}},{}],Tags:[bomb,bomb11],Pose:{RightArm:[0.0f,0.0f,0.0f]},Invisible:1b}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:132}},{}],Tags:[bomb,bomb12],Pose:{RightArm:[0.0f,0.0f,0.0f]},Invisible:1b}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:132}},{}],Tags:[bomb,bomb13],Pose:{RightArm:[0.0f,0.0f,0.0f]},Invisible:1b}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:132}},{}],Tags:[bomb,bomb14],Pose:{RightArm:[0.0f,0.0f,0.0f]},Invisible:1b}


execute at @e[tag=satsuei1] run tp @e[tag=bomb11] ^-0.5 ^-2 ^4.1 ~90 ~
execute at @e[tag=satsuei1] run tp @e[tag=bomb12] ^0.5 ^-3 ^4 ~90 ~
execute at @e[tag=satsuei1] run tp @e[tag=bomb13] ^-0.5 ^-4 ^4.1 ~90 ~
execute at @e[tag=satsuei1] run tp @e[tag=bomb14] ^0.5 ^-5 ^4.1 ~90 ~

#summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,HandItems:[{id:"minecraft:potion",Count:1b,tag:{CustomPotionColor:16730112,CustomModelData:1}},{}],Tags:[bomb,bomb51,bomb5],Pose:{RightArm:[0.0f,0.0f,0.0f]},Invisible:1b}
#summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,HandItems:[{id:"minecraft:potion",Count:1b,tag:{CustomPotionColor:16730112,CustomModelData:1}},{}],Tags:[bomb,bomb52,bomb5],Pose:{RightArm:[0.0f,0.0f,0.0f]},Invisible:1b}
#summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,HandItems:[{id:"minecraft:potion",Count:1b,tag:{CustomPotionColor:16730112,CustomModelData:1}},{}],Tags:[bomb,bomb53,bomb5],Pose:{RightArm:[0.0f,0.0f,0.0f]},Invisible:1b}
#summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,HandItems:[{id:"minecraft:potion",Count:1b,tag:{CustomPotionColor:16730112,CustomModelData:1}},{}],Tags:[bomb,bomb54,bomb5],Pose:{RightArm:[0.0f,0.0f,0.0f]},Invisible:1b}
#summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,HandItems:[{id:"minecraft:potion",Count:1b,tag:{CustomPotionColor:16730112,CustomModelData:1}},{}],Tags:[bomb,bomb55,bomb5],Pose:{RightArm:[0.0f,0.0f,0.0f]},Invisible:1b}
#
#execute at @e[tag=satsuei2] run tp @e[tag=bomb51] ^0.1 ^2 ^-15 ~90 ~
#execute at @e[tag=satsuei2] run tp @e[tag=bomb52] ^0.2 ^5 ^-26 ~90 ~
#execute at @e[tag=satsuei2] run tp @e[tag=bomb53] ^-0.3 ^8 ^-37 ~90 ~
#execute at @e[tag=satsuei2] run tp @e[tag=bomb54] ^0.1 ^11 ^-48 ~90 ~
#execute at @e[tag=satsuei2] run tp @e[tag=bomb55] ^0.4 ^14 ^-59 ~90 ~
#
#execute as @e[tag=bomb] run data modify entity @s Pose set from entity @e[tag=plane-body,tag=b17g,limit=1] Pose

execute as @e[tag=bomb] run data modify entity @s Pose set value {RightArm:[0.0f,-80f,-70f]}