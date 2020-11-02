#入力　entity:villager position:at @s
#処理　入力村人に最近プレイヤーの進捗に応じたショップ内容をセット

#参照プレイヤーにタグ付け
tag @p add shop-target

#ショップ内容書き換え
data merge entity @s {Offers:{Recipes:[]}}

execute if entity @p[tag=shop-target,advancements={advancements:japan/a5m=true}] run loot replace block ~ ~-2 ~ container.0 loot plane-data:a5m
execute if entity @p[tag=shop-target,advancements={advancements:japan/a5m=true}] run data modify entity @s Offers.Recipes prepend value {buy:{id:gold_nugget,Count:1},sell:{id:"minecraft:bat_spawn_egg",Count:1b},maxUses:20000,xp:0}
execute if entity @p[tag=shop-target,advancements={advancements:japan/a5m=true}] run data modify entity @s Offers.Recipes[0].sell.tag set from block ~ ~-2 ~ Items[0].tag

execute if entity @p[tag=shop-target,advancements={advancements:japan/ki-43=true}] run loot replace block ~ ~-2 ~ container.0 loot plane-data:ki-43
execute if entity @p[tag=shop-target,advancements={advancements:japan/ki-43=true}] run data modify entity @s Offers.Recipes prepend value {buy:{id:gold_nugget,Count:1},sell:{id:"minecraft:bat_spawn_egg",Count:1b},maxUses:20000,xp:0}
execute if entity @p[tag=shop-target,advancements={advancements:japan/ki-43=true}] run data modify entity @s Offers.Recipes[0].sell.tag set from block ~ ~-2 ~ Items[0].tag

execute if entity @p[tag=shop-target,advancements={advancements:japan/d3a=true}] run loot replace block ~ ~-2 ~ container.0 loot plane-data:d3a
execute if entity @p[tag=shop-target,advancements={advancements:japan/d3a=true}] run data modify entity @s Offers.Recipes prepend value {buy:{id:gold_nugget,Count:1},sell:{id:"minecraft:bat_spawn_egg",Count:1b},maxUses:20000,xp:0}
execute if entity @p[tag=shop-target,advancements={advancements:japan/d3a=true}] run data modify entity @s Offers.Recipes[0].sell.tag set from block ~ ~-2 ~ Items[0].tag

execute if entity @p[tag=shop-target,advancements={advancements:japan/ki-21=true}] run loot replace block ~ ~-2 ~ container.0 loot plane-data:ki-21
execute if entity @p[tag=shop-target,advancements={advancements:japan/ki-21=true}] run data modify entity @s Offers.Recipes prepend value {buy:{id:gold_nugget,Count:1},sell:{id:"minecraft:bat_spawn_egg",Count:1b},maxUses:20000,xp:0}
execute if entity @p[tag=shop-target,advancements={advancements:japan/ki-21=true}] run data modify entity @s Offers.Recipes[0].sell.tag set from block ~ ~-2 ~ Items[0].tag

execute if entity @p[tag=shop-target,advancements={advancements:japan/a6m2=true}] run loot replace block ~ ~-2 ~ container.0 loot plane-data:a6m2
execute if entity @p[tag=shop-target,advancements={advancements:japan/a6m2=true}] run data modify entity @s Offers.Recipes prepend value {buy:{id:emerald,Count:7},sell:{id:"minecraft:bat_spawn_egg",Count:1b},maxUses:20000,xp:0}
execute if entity @p[tag=shop-target,advancements={advancements:japan/a6m2=true}] run data modify entity @s Offers.Recipes[0].sell.tag set from block ~ ~-2 ~ Items[0].tag

execute if entity @p[tag=shop-target,advancements={advancements:japan/j2m3=true}] run loot replace block ~ ~-2 ~ container.0 loot plane-data:j2m3
execute if entity @p[tag=shop-target,advancements={advancements:japan/j2m3=true}] run data modify entity @s Offers.Recipes prepend value {buy:{id:emerald,Count:15},sell:{id:"minecraft:bat_spawn_egg",Count:1b},maxUses:20000,xp:0}
execute if entity @p[tag=shop-target,advancements={advancements:japan/j2m3=true}] run data modify entity @s Offers.Recipes[0].sell.tag set from block ~ ~-2 ~ Items[0].tag

execute if entity @p[tag=shop-target,advancements={advancements:japan/d4y2=true}] run loot replace block ~ ~-2 ~ container.0 loot plane-data:d4y2
execute if entity @p[tag=shop-target,advancements={advancements:japan/d4y2=true}] run data modify entity @s Offers.Recipes prepend value {buy:{id:emerald,Count:5},sell:{id:"minecraft:bat_spawn_egg",Count:1b},maxUses:20000,xp:0}
execute if entity @p[tag=shop-target,advancements={advancements:japan/d4y2=true}] run data modify entity @s Offers.Recipes[0].sell.tag set from block ~ ~-2 ~ Items[0].tag

execute if entity @p[tag=shop-target,advancements={advancements:japan/ki-44=true}] run loot replace block ~ ~-2 ~ container.0 loot plane-data:ki-44
execute if entity @p[tag=shop-target,advancements={advancements:japan/ki-44=true}] run data modify entity @s Offers.Recipes prepend value {buy:{id:emerald,Count:5},sell:{id:"minecraft:bat_spawn_egg",Count:1b},maxUses:20000,xp:0}
execute if entity @p[tag=shop-target,advancements={advancements:japan/ki-44=true}] run data modify entity @s Offers.Recipes[0].sell.tag set from block ~ ~-2 ~ Items[0].tag

execute if entity @p[tag=shop-target,advancements={advancements:japan/g4m1=true}] run loot replace block ~ ~-2 ~ container.0 loot plane-data:g4m1
execute if entity @p[tag=shop-target,advancements={advancements:japan/g4m1=true}] run data modify entity @s Offers.Recipes prepend value {buy:{id:emerald,Count:10},sell:{id:"minecraft:bat_spawn_egg",Count:1b},maxUses:20000,xp:0}
execute if entity @p[tag=shop-target,advancements={advancements:japan/g4m1=true}] run data modify entity @s Offers.Recipes[0].sell.tag set from block ~ ~-2 ~ Items[0].tag



#タグ解除
tag @p[tag=shop-target] remove shop-target