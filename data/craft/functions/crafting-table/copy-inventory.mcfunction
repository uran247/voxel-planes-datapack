#入力：position:crafting-table
#処理：0-0-0-0-5にnbtをコピー 空きクラフト欄はtntで埋める

data modify entity 0-0-0-0-5 HandItems[0].tag.BlockEntityTag.Items set from block ~ ~ ~ Items
execute as 0-0-0-0-5 unless entity @s[nbt={HandItems:[{tag:{BlockEntityTag:{Items:[{Slot:0b}]}}}]}] run data modify entity 0-0-0-0-5 HandItems[0].tag.BlockEntityTag.Items append value {Slot:0b,Count:1b,id:"minecraft:tnt"}
execute as 0-0-0-0-5 unless entity @s[nbt={HandItems:[{tag:{BlockEntityTag:{Items:[{Slot:1b}]}}}]}] run data modify entity 0-0-0-0-5 HandItems[0].tag.BlockEntityTag.Items append value {Slot:1b,Count:1b,id:"minecraft:tnt"}
execute as 0-0-0-0-5 unless entity @s[nbt={HandItems:[{tag:{BlockEntityTag:{Items:[{Slot:2b}]}}}]}] run data modify entity 0-0-0-0-5 HandItems[0].tag.BlockEntityTag.Items append value {Slot:2b,Count:1b,id:"minecraft:tnt"}
execute as 0-0-0-0-5 unless entity @s[nbt={HandItems:[{tag:{BlockEntityTag:{Items:[{Slot:3b}]}}}]}] run data modify entity 0-0-0-0-5 HandItems[0].tag.BlockEntityTag.Items append value {Slot:3b,Count:1b,id:"minecraft:tnt"}
execute as 0-0-0-0-5 unless entity @s[nbt={HandItems:[{tag:{BlockEntityTag:{Items:[{Slot:4b}]}}}]}] run data modify entity 0-0-0-0-5 HandItems[0].tag.BlockEntityTag.Items append value {Slot:4b,Count:1b,id:"minecraft:tnt"}
execute as 0-0-0-0-5 unless entity @s[nbt={HandItems:[{tag:{BlockEntityTag:{Items:[{Slot:9b}]}}}]}] run data modify entity 0-0-0-0-5 HandItems[0].tag.BlockEntityTag.Items append value {Slot:9b,Count:1b,id:"minecraft:tnt"}
execute as 0-0-0-0-5 unless entity @s[nbt={HandItems:[{tag:{BlockEntityTag:{Items:[{Slot:10b}]}}}]}] run data modify entity 0-0-0-0-5 HandItems[0].tag.BlockEntityTag.Items append value {Slot:10b,Count:1b,id:"minecraft:tnt"}
execute as 0-0-0-0-5 unless entity @s[nbt={HandItems:[{tag:{BlockEntityTag:{Items:[{Slot:11b}]}}}]}] run data modify entity 0-0-0-0-5 HandItems[0].tag.BlockEntityTag.Items append value {Slot:11b,Count:1b,id:"minecraft:tnt"}
execute as 0-0-0-0-5 unless entity @s[nbt={HandItems:[{tag:{BlockEntityTag:{Items:[{Slot:12b}]}}}]}] run data modify entity 0-0-0-0-5 HandItems[0].tag.BlockEntityTag.Items append value {Slot:12b,Count:1b,id:"minecraft:tnt"}
execute as 0-0-0-0-5 unless entity @s[nbt={HandItems:[{tag:{BlockEntityTag:{Items:[{Slot:13b}]}}}]}] run data modify entity 0-0-0-0-5 HandItems[0].tag.BlockEntityTag.Items append value {Slot:13b,Count:1b,id:"minecraft:tnt"}
execute as 0-0-0-0-5 unless entity @s[nbt={HandItems:[{tag:{BlockEntityTag:{Items:[{Slot:18b}]}}}]}] run data modify entity 0-0-0-0-5 HandItems[0].tag.BlockEntityTag.Items append value {Slot:18b,Count:1b,id:"minecraft:tnt"}
execute as 0-0-0-0-5 unless entity @s[nbt={HandItems:[{tag:{BlockEntityTag:{Items:[{Slot:19b}]}}}]}] run data modify entity 0-0-0-0-5 HandItems[0].tag.BlockEntityTag.Items append value {Slot:19b,Count:1b,id:"minecraft:tnt"}
execute as 0-0-0-0-5 unless entity @s[nbt={HandItems:[{tag:{BlockEntityTag:{Items:[{Slot:20b}]}}}]}] run data modify entity 0-0-0-0-5 HandItems[0].tag.BlockEntityTag.Items append value {Slot:20b,Count:1b,id:"minecraft:tnt"}
execute as 0-0-0-0-5 unless entity @s[nbt={HandItems:[{tag:{BlockEntityTag:{Items:[{Slot:21b}]}}}]}] run data modify entity 0-0-0-0-5 HandItems[0].tag.BlockEntityTag.Items append value {Slot:21b,Count:1b,id:"minecraft:tnt"}
execute as 0-0-0-0-5 unless entity @s[nbt={HandItems:[{tag:{BlockEntityTag:{Items:[{Slot:22b}]}}}]}] run data modify entity 0-0-0-0-5 HandItems[0].tag.BlockEntityTag.Items append value {Slot:22b,Count:1b,id:"minecraft:tnt"}
