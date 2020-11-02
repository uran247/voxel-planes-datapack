execute as @e[type=minecraft:villager,x=-1,y=142,z=45,distance=..2] at @s if entity @p[distance=..6] run function shop:set-items/set-plane-shop
execute as @e[type=minecraft:villager,x=8,y=142,z=45,distance=..2] at @s if entity @p[distance=..6] run function shop:set-items/set-translate-shop
function shop:item-frame/set-free-items