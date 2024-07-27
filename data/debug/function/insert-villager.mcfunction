execute if score @s open-shop matches 1 run data modify entity @e[type=minecraft:villager,limit=1] Offers.Recipes append value {buy:{id:emerald,Count:1},sell:{id:acacia_button,Count:1},maxUses:9999999}
execute if score @s open-shop matches 1 run scoreboard players add @s open-shop 1
execute if score @s open-shop matches 3 run data merge entity @e[type=minecraft:villager,limit=1] {Offers:{Recipes:[]}}
execute if score @s open-shop matches 3 run scoreboard players set @s open-shop 0
