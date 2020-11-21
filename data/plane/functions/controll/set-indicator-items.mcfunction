#入力：entity プレイヤー
#処理：アイテム欄に操作説明アイテムをセット

#アイテムを置くスロットのアイテムを退避
data merge block 0 1 0 {Items:[]}
execute unless data entity @s Inventory[{Slot:5b,tag:{item-type:indicator}}] run data modify block 0 1 0 Items append from entity @s Inventory[{Slot:5b}]
execute unless data entity @s Inventory[{Slot:7b,tag:{item-type:indicator}}] run data modify block 0 1 0 Items append from entity @s Inventory[{Slot:7b}]
execute unless data entity @s Inventory[{Slot:8b,tag:{item-type:indicator}}] run data modify block 0 1 0 Items append from entity @s Inventory[{Slot:8b}]
execute unless data entity @s Inventory[{Slot:-106b,tag:{item-type:controll-rod}}] run data modify block 0 1 0 Items append from entity @s Inventory[{Slot:-106b}]

execute unless data entity @s Inventory[{Slot:5b,tag:{item-type:indicator}}] run loot replace entity @s hotbar.5 loot item:dummy/throttle-down
execute unless data entity @s Inventory[{Slot:7b,tag:{item-type:indicator}}] run loot replace entity @s hotbar.7 loot item:dummy/lock-turning
execute unless data entity @s Inventory[{Slot:8b,tag:{item-type:indicator}}] run loot replace entity @s hotbar.8 loot item:dummy/throttle-up
execute unless data entity @s Inventory[{Slot:-106b,tag:{item-type:controll-rod}}] run loot replace entity @s weapon.offhand loot item:tools/controll-stick

loot give @s mine 0 1 0 air{load:1b}