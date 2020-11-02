execute at @s run replaceitem block ~ ~-1 ~ container.1 minecraft:stone_button
execute at @s run data modify block ~ ~-1 ~ Items[{Slot:1b}].Count set from entity @s Inventory[{Slot:-106b}].Count
execute at @s run data modify block ~ ~-1 ~ Items[{Slot:1b}].id set from entity @s Inventory[{Slot:-106b}].id
execute at @s run data modify block ~ ~-1 ~ Items[{Slot:1b}].tag set from entity @s Inventory[{Slot:-106b}].tag


clear @s minecraft:carrot_on_a_stick{item-type:controll-rod}

loot replace entity @s weapon.offhand loot loot:items/tools/controll-stick

loot give uran1132 mine ~ ~-1 ~ air{load:1b}
