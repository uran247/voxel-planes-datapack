#入力：entity: player position: player score:@s taken-damage
#処理：プレイヤーにtaken-damege分のダメージを与える

execute store success score #is-evacuation reg1 if data entity @s Inventory[{Slot:-106b}]
execute if score #is-evacuation reg1 matches 1 run data merge block 0 5 0 {Items:[{slot:0b,id:"minecraft:stone",Count:1b}]}
execute if score #is-evacuation reg1 matches 1 run data modify block 0 5 0 Items[{Slot:0b}].id set from entity @s Inventory[{Slot:-106b}].id
execute if score #is-evacuation reg1 matches 1 run data modify block 0 5 0 Items[{Slot:0b}].tag set from entity @s Inventory[{Slot:-106b}].tag
replaceitem entity @s weapon.offhand stone_button{AttributeModifiers:[{}]}


execute store result score #hp reg1 run data get entity @s Health
scoreboard players operation #hp reg1 -= @s taken-damage
scoreboard players operation #new-hp reg1 = #hp reg1
scoreboard players operation #hp reg1 > #1 Num

replaceitem block 0 6 0 container.0 minecraft:stone_button{AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"w",UUIDLeast:1,UUIDMost:1,Operation:0,Slot:"offhand",Amount:20.0f}]}
execute store result block 0 6 0 Items[{Slot:0b}].tag.AttributeModifiers[{AttributeName:"generic.maxHealth",Name:"w",UUIDLeast:1,UUIDMost:1,Operation:0,Slot:"offhand"}].Amount double 1 run scoreboard players remove #hp reg1 20
loot replace entity @s weapon.offhand mine 0 6 0 air{load:1b}

effect give @s minecraft:health_boost 1 0 true
effect clear @s minecraft:health_boost
#effect give @s instant_health 1 0 true

execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"stone_button"}]}] run replaceitem entity @s weapon.offhand air
execute if score #is-evacuation reg1 matches 1 run loot replace entity @s weapon.offhand mine 0 5 0 air{load:1b}

execute if score #new-hp reg1 matches ..0 run effect give @s minecraft:instant_damage 1 2 true
execute if score #new-hp reg1 matches 1.. run effect give @s minecraft:instant_damage 1 126 true

