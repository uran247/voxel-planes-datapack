#処理：チェストに突っ込まれた余計なアイテムを弾き返す,バリアブロックを配置

#チェストに突っ込まれた余計なアイテムを弾き返す
data modify block 0 6 0 Items append from block ~ ~ ~ Items[{Slot:5b}]
data modify block 0 6 0 Items append from block ~ ~ ~ Items[{Slot:6b}]
data modify block 0 6 0 Items append from block ~ ~ ~ Items[{Slot:7b}]
data modify block 0 6 0 Items append from block ~ ~ ~ Items[{Slot:8b}]
data modify block 0 6 0 Items append from block ~ ~ ~ Items[{Slot:14b}]
data modify block 0 6 0 Items append from block ~ ~ ~ Items[{Slot:15b}]
data modify block 0 6 0 Items append from block ~ ~ ~ Items[{Slot:16b}]
data modify block 0 6 0 Items append from block ~ ~ ~ Items[{Slot:17b}]
data modify block 0 6 0 Items append from block ~ ~ ~ Items[{Slot:23b}]
data modify block 0 6 0 Items append from block ~ ~ ~ Items[{Slot:24b}]
data modify block 0 6 0 Items append from block ~ ~ ~ Items[{Slot:25b}]
data modify block 0 6 0 Items append from block ~ ~ ~ Items[{Slot:26b}]
#tellraw @p [{"nbt":"Items","block":"0 6 0"}] 
data modify block 0 6 0 Items[{tag:{dummy-item:1b}}].Count set value 0
loot spawn ~ ~ ~1 mine 0 6 0 air{load:1b}
data merge block 0 6 0 {Items:[]}
replaceitem block ~ ~ ~ container.6 minecraft:air
replaceitem block ~ ~ ~ container.7 minecraft:air
replaceitem block ~ ~ ~ container.8 minecraft:air
replaceitem block ~ ~ ~ container.15 minecraft:air
replaceitem block ~ ~ ~ container.16 minecraft:air
replaceitem block ~ ~ ~ container.17 minecraft:air
replaceitem block ~ ~ ~ container.24 minecraft:air
replaceitem block ~ ~ ~ container.25 minecraft:air
replaceitem block ~ ~ ~ container.26 minecraft:air

#バリアブロックを配置
clear @a minecraft:barrier{dummy-item:1b}
replaceitem block ~ ~ ~ container.5 minecraft:barrier{dummy-item:1b}
replaceitem block ~ ~ ~ container.14 minecraft:barrier{dummy-item:1b}
replaceitem block ~ ~ ~ container.23 minecraft:barrier{dummy-item:1b}

