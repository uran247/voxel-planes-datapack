#処理：phantom_spawn_eggがアイテム欄から消えるまでplaneを与える
loot give @s[advancements={item:tools/wrench=true}] loot item:tools/wrench

clear @s phantom_spawn_egg 1
execute store success score @s vp.reg1 run clear @s phantom_spawn_egg 0
execute if score @s vp.reg1 matches 1.. run function advancements:give-items
say give