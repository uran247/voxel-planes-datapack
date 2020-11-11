execute as @a[tag=controll-stick-reciever] if data entity @s Inventory[{Slot:6b}] run loot give @s loot item:tools/controll-stick
execute as @a[tag=controll-stick-reciever] unless data entity @s Inventory[{Slot:6b}] run loot replace entity @s hotbar.6 loot item:tools/controll-stick
tag @a[tag=controll-stick-reciever] remove controll-stick-reciever

