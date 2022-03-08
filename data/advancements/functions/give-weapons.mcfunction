#処理：phantom_spawn_eggがアイテム欄から消えるまでplaneを与える
loot give @s[advancements={weapon-data:bomb/60kg-bomb=true}] loot weapon-data:60kg-bomb
loot give @s[advancements={weapon-data:bomb/100kg-bomb=true}] loot weapon-data:100kg-bomb
loot give @s[advancements={weapon-data:bomb/250kg-bomb=true}] loot weapon-data:250kg-bomb
loot give @s[advancements={weapon-data:bomb/500kg-bomb=true}] loot weapon-data:500kg-bomb
loot give @s[advancements={weapon-data:bomb/800kg-bomb=true}] loot weapon-data:800kg-bomb
loot give @s[advancements={weapon-data:rocket/aa-rocket=true}] loot weapon-data:aa-rocket
loot give @s[advancements={weapon-data:rocket/ag-rocket=true}] loot weapon-data:ag-rocket
loot give @s[advancements={weapon-data:gun/ho-103=true}] loot weapon-data:ho-103
loot give @s[advancements={weapon-data:gun/mg151=true}] loot weapon-data:mg151
loot give @s[advancements={weapon-data:torpedo/torpedo=true}] loot weapon-data:torpedo
loot give @s[advancements={weapon-data:missile/ir-missile=true}] loot weapon-data:ir-missile

clear @s phantom_spawn_egg 1
execute store success score @s vp.reg1 run clear @s phantom_spawn_egg 0
execute if score @s vp.reg1 matches 1.. run function advancements:give-weapons
