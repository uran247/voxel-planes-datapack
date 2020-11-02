summon armor_stand ~ ~ ~ {Rotation:[180f,90f],Tags:[drop-init,dropping,"d3a-bomb-right",d3a-init,plane,plane-bomb,plane-parts,entity-nohit,60kg,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:76,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
#スコア付与
scoreboard players set @e[tag=drop-init] speed 10
scoreboard players set @e[tag=drop-init] age 1200
scoreboard players set @e[tag=drop-init] damage 600

tag @e[tag=drop-init] remove drop-init
