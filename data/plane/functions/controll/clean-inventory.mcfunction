#> plane:controll/clean-inventory
#
# アイテム欄を掃除して操作説明アイテムをセット
# 装備品を剥がしてインベントリへ送る
#
# @input
#   executer @p

#ストレージ初期化
data merge block 0 1 0 {Items:[]}
data merge storage minecraft:plane-datapack {Items:[]}

#装備品をストレージに退避
execute if data entity @s Inventory[{Slot:100b}] run data modify storage minecraft:plane-datapack Items append from entity @s Inventory[{Slot:100b}]
execute if data entity @s Inventory[{Slot:101b}] run data modify storage minecraft:plane-datapack Items append from entity @s Inventory[{Slot:101b}]
execute if data entity @s Inventory[{Slot:102b}] run data modify storage minecraft:plane-datapack Items append from entity @s Inventory[{Slot:102b}]
execute if data entity @s Inventory[{Slot:103b}] run data modify storage minecraft:plane-datapack Items append from entity @s Inventory[{Slot:103b}]
execute unless data entity @s Inventory[{Slot:-106b,tag:{item-type:controll-rod}}] run data modify storage minecraft:plane-datapack Items append from entity @s Inventory[{Slot:-106b}]

#装備品を削除
item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

#ストレージのスロットを書き換えチェストに入るようにする
execute if data storage minecraft:plane-datapack Items[{Slot:100b}] run data modify storage minecraft:plane-datapack Items[{Slot:100b}].Slot set value 0b
execute if data storage minecraft:plane-datapack Items[{Slot:101b}] run data modify storage minecraft:plane-datapack Items[{Slot:101b}].Slot set value 1b
execute if data storage minecraft:plane-datapack Items[{Slot:102b}] run data modify storage minecraft:plane-datapack Items[{Slot:102b}].Slot set value 2b
execute if data storage minecraft:plane-datapack Items[{Slot:103b}] run data modify storage minecraft:plane-datapack Items[{Slot:103b}].Slot set value 3b
execute if data storage minecraft:plane-datapack Items[{Slot:-106b}] run data modify storage minecraft:plane-datapack Items[{Slot:-106b}].Slot set value 4b

#ストレージをシュルカーボックスに入れる
data modify block 0 1 0 Items set from storage minecraft:plane-datapack Items
#tellraw @p [{"nbt":"Items","storage":"minecraft:plane-datapack"}] 

#アイテムを置くスロットのアイテムをシュルカーボックスに退避
execute unless data entity @s Inventory[{Slot:5b,tag:{item-type:indicator}}] run data modify block 0 1 0 Items append from entity @s Inventory[{Slot:5b}]
execute unless data entity @s Inventory[{Slot:7b,tag:{item-type:indicator}}] run data modify block 0 1 0 Items append from entity @s Inventory[{Slot:7b}]
execute unless data entity @s Inventory[{Slot:8b,tag:{item-type:indicator}}] run data modify block 0 1 0 Items append from entity @s Inventory[{Slot:8b}]

#操作説明アイテムを配置
execute unless data entity @s Inventory[{Slot:5b,tag:{item-type:indicator}}] run loot replace entity @s hotbar.5 loot item:dummy/throttle-down
execute unless data entity @s Inventory[{Slot:7b,tag:{item-type:indicator}}] run loot replace entity @s hotbar.7 loot item:dummy/lock-turning
execute unless data entity @s Inventory[{Slot:8b,tag:{item-type:indicator}}] run loot replace entity @s hotbar.8 loot item:dummy/throttle-up
execute unless data entity @s Inventory[{Slot:-106b,tag:{item-type:controll-rod}}] run loot replace entity @s weapon.offhand loot item:tools/controll-stick
#tellraw @p [{"nbt":"Items","block":"0 1 0"}]

#退避したアイテムを再付与
loot give @s mine 0 1 0 air{load:1b}