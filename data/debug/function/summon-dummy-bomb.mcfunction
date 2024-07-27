summon armor_stand ~ ~ ~ {Tags:[weapon-init,has-offset,has-model,plane-bomb,entity-nohit,bomb-init,position-processed,dropping],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:118}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}

scoreboard players set @e[tag=bomb-init] vp.weight 800
scoreboard players set @e[tag=bomb-init] vp.damage 800
scoreboard players set @e[tag=bomb-init] vp.speed 0
scoreboard players set @e[tag=bomb-init] vp.speedX 0
scoreboard players set @e[tag=bomb-init] vp.speedY 0
scoreboard players set @e[tag=bomb-init] vp.speedZ 0


tag @e[tag=bomb-init] remove bomb-init