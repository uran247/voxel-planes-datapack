#処理：phantom_spawn_eggがアイテム欄から消えるまでplaneを与える
loot give @s[advancements={plane-data:crafting/plane/a5m-recipe=true}] loot plane-data:a5m
loot give @s[advancements={plane-data:crafting/plane/a6m2-recipe=true}] loot plane-data:a6m2
loot give @s[advancements={plane-data:crafting/plane/a6m5-recipe=true}] loot plane-data:a6m5
loot give @s[advancements={plane-data:crafting/plane/d3a-recipe=true}] loot plane-data:d3a
loot give @s[advancements={plane-data:crafting/plane/d4y2-recipe=true}] loot plane-data:d4y2
loot give @s[advancements={plane-data:crafting/plane/g4m1-recipe=true}] loot plane-data:g4m1
loot give @s[advancements={plane-data:crafting/plane/j2m3-recipe=true}] loot plane-data:j2m3
loot give @s[advancements={plane-data:crafting/plane/ki-21-recipe=true}] loot plane-data:ki-21
loot give @s[advancements={plane-data:crafting/plane/ki-43-recipe=true}] loot plane-data:ki-43
loot give @s[advancements={plane-data:crafting/plane/ki-44-recipe=true}] loot plane-data:ki-44
loot give @s[advancements={plane-data:crafting/plane/ki-49-recipe=true}] loot plane-data:ki-49
loot give @s[advancements={plane-data:crafting/plane/ki-61-recipe=true}] loot plane-data:ki-61
loot give @s[advancements={plane-data:crafting/plane/n1k2-recipe=true}] loot plane-data:n1k2
loot give @s[advancements={plane-data:crafting/plane/fw190d-9-recipe=true}] loot plane-data:fw190d9
loot give @s[advancements={plane-data:crafting/plane/f4u-1=true}] loot plane-data:f4u-1
loot give @s[advancements={plane-data:crafting/plane/swordfish=true}] loot plane-data:swordfish
loot give @s[advancements={plane-data:crafting/plane/spitfiremkix=true}] loot plane-data:spitfiremkix
loot give @s[advancements={plane-data:crafting/plane/fireflymkv=true}] loot plane-data:fireflymkv
loot give @s[advancements={plane-data:crafting/plane/seafuryfb11=true}] loot plane-data:seafuryfb11

clear @s phantom_spawn_egg 1
execute store success score @s vp.reg1 run clear @s phantom_spawn_egg 0
execute if score @s vp.reg1 matches 1.. run function advancements:give-planes
