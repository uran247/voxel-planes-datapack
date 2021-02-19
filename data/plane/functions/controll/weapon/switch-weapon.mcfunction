#> plane:controll/weapon/switch-weapon
#
# 武器使用操作を検知し、機体に応じてweaponfunctionを呼び分け
# 利用可能タグ controll-target:機体
#
# @input
#   executer @p
#
# @within plane:controll/weapon

#オフハンド入れ直し
execute if data entity @s Inventory[{Slot:-106b}] unless data entity @s Inventory[{Slot:-106b,tag:{item-type:indicator}}] run replaceitem block 0 1 0 container.1 minecraft:stone_button
execute unless data entity @s Inventory[{Slot:-106b,tag:{item-type:indicator}}] run data modify block 0 1 0 Items[{Slot:1b}].Count set from entity @s Inventory[{Slot:-106b}].Count
execute unless data entity @s Inventory[{Slot:-106b,tag:{item-type:indicator}}] run data modify block 0 1 0 Items[{Slot:1b}].id set from entity @s Inventory[{Slot:-106b}].id
execute unless data entity @s Inventory[{Slot:-106b,tag:{item-type:indicator}}] run data modify block 0 1 0 Items[{Slot:1b}].tag set from entity @s Inventory[{Slot:-106b}].tag
clear @s minecraft:carrot_on_a_stick{item-type:controll-rod}
loot replace entity @s weapon.offhand loot item:tools/controll-stick
loot give @s mine 0 1 0 air{load:1b}
replaceitem block 0 1 0 container.1 minecraft:air

#武装変更フラグを立てる
tag @e[type=armor_stand,tag=controll-target,distance=..20,sort=nearest,limit=1] add need-change-weapon
#run  function plane:controll/weapon/change-current-weapon

