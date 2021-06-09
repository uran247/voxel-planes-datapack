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

#装備品をシュルカーボックスに退避
item replace block 0 1 0 container.0 from entity @s armor.head
item replace block 0 1 0 container.1 from entity @s armor.chest
item replace block 0 1 0 container.2 from entity @s armor.legs
item replace block 0 1 0 container.3 from entity @s armor.feet
execute unless data entity @s Inventory[{Slot:-106b,tag:{item-type:controll-rod}}] run item replace block 0 1 0 container.4 from entity @s weapon.offhand

#装備品を削除
item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

#操作説明アイテムを置くスロットのアイテムをシュルカーボックスに退避
#execute unless data entity @s Inventory[{Slot:5b,tag:{item-type:indicator}}] run item replace block 0 1 0 container.5 from entity @s hotbar.5
execute unless data entity @s Inventory[{Slot:7b,tag:{item-type:indicator}}] run item replace block 0 1 0 container.7 from entity @s hotbar.7
#execute unless data entity @s Inventory[{Slot:8b,tag:{item-type:indicator}}] run item replace block 0 1 0 container.8 from entity @s hotbar.8

#操作説明アイテムを配置
#execute unless data entity @s Inventory[{Slot:5b,tag:{item-type:indicator}}] run loot replace entity @s hotbar.5 loot item:dummy/throttle-down
execute unless data entity @s Inventory[{Slot:7b,tag:{item-type:indicator}}] run loot replace entity @s hotbar.7 loot item:dummy/lock-turning
#execute unless data entity @s Inventory[{Slot:8b,tag:{item-type:indicator}}] run loot replace entity @s hotbar.8 loot item:dummy/throttle-up
execute unless data entity @s Inventory[{Slot:-106b,tag:{item-type:controll-rod}}] run loot replace entity @s weapon.offhand loot item:tools/controll-stick
#tellraw @p [{"nbt":"Items","block":"0 1 0"}]

#退避したアイテムを再付与
loot give @s mine 0 1 0 air{load:1b}