#入力　entity:villager position:at @s
#処理　入力村人に最近プレイヤーの進捗に応じたショップ内容をセット

#ショップ内容書き換え
data merge entity @s {Offers:{Recipes:[]}}

data modify entity @s Offers.Recipes prepend value {buy:{id:nether_star,Count:25b},sell:{id:"minecraft:paper",Count:1b},maxUses:99999999,xp:0}
loot replace block ~ ~-2 ~ container.0 loot loot:items/blueprint/blueprint-t2
loot replace block ~ ~-2 ~ container.1 loot loot:items/nether-star/nether-star-t1
data modify entity @s Offers.Recipes[0].sell.tag set from block ~ ~-2 ~ Items[0].tag
data modify entity @s Offers.Recipes[0].buy.tag set from block ~ ~-2 ~ Items[1].tag

data modify entity @s Offers.Recipes prepend value {buy:{id:nether_star,Count:30b},sell:{id:"minecraft:paper",Count:1b},maxUses:99999999,xp:0}
loot replace block ~ ~-2 ~ container.0 loot loot:items/blueprint/blueprint-t3
loot replace block ~ ~-2 ~ container.1 loot loot:items/nether-star/nether-star-t2
data modify entity @s Offers.Recipes[0].sell.tag set from block ~ ~-2 ~ Items[0].tag
data modify entity @s Offers.Recipes[0].buy.tag set from block ~ ~-2 ~ Items[1].tag
