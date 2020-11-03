#入力
#処理　offer-itemを回収したらインベントリを全削除する

execute as @a store success score @s reg1 run clear @s #minecraft:special-items{offer-item:1b} 0
execute as 0-0-0-0-5 run loot give @a[scores={reg1=1..}] fish loot:craft/craft ~ ~ ~ mainhand
execute as @a[scores={reg1=1..}] run clear @s #minecraft:special-items{offer-item:1b} 1

#全クラフトフィールドのcountを-1
execute store result score #barrel-count reg1 run data get block ~ ~ ~ Items[{Slot:0b}].Count
execute if entity @a[scores={reg1=1..}] if score #barrel-count reg1 matches 1.. store result block ~ ~ ~ Items[{Slot:0b}].Count byte 1 run scoreboard players remove #barrel-count reg1 1

execute store result score #barrel-count reg1 run data get block ~ ~ ~ Items[{Slot:1b}].Count
execute if entity @a[scores={reg1=1..}] if score #barrel-count reg1 matches 1.. store result block ~ ~ ~ Items[{Slot:1b}].Count byte 1 run scoreboard players remove #barrel-count reg1 1

execute store result score #barrel-count reg1 run data get block ~ ~ ~ Items[{Slot:2b}].Count
execute if entity @a[scores={reg1=1..}] if score #barrel-count reg1 matches 1.. store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players remove #barrel-count reg1 1

execute store result score #barrel-count reg1 run data get block ~ ~ ~ Items[{Slot:3b}].Count
execute if entity @a[scores={reg1=1..}] if score #barrel-count reg1 matches 1.. store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players remove #barrel-count reg1 1

execute store result score #barrel-count reg1 run data get block ~ ~ ~ Items[{Slot:4b}].Count
execute if entity @a[scores={reg1=1..}] if score #barrel-count reg1 matches 1.. store result block ~ ~ ~ Items[{Slot:4b}].Count byte 1 run scoreboard players remove #barrel-count reg1 1

execute store result score #barrel-count reg1 run data get block ~ ~ ~ Items[{Slot:9b}].Count
execute if entity @a[scores={reg1=1..}] if score #barrel-count reg1 matches 1.. store result block ~ ~ ~ Items[{Slot:9b}].Count byte 1 run scoreboard players remove #barrel-count reg1 1

execute store result score #barrel-count reg1 run data get block ~ ~ ~ Items[{Slot:10b}].Count
execute if entity @a[scores={reg1=1..}] if score #barrel-count reg1 matches 1.. store result block ~ ~ ~ Items[{Slot:10b}].Count byte 1 run scoreboard players remove #barrel-count reg1 1

execute store result score #barrel-count reg1 run data get block ~ ~ ~ Items[{Slot:11b}].Count
execute if entity @a[scores={reg1=1..}] if score #barrel-count reg1 matches 1.. store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run scoreboard players remove #barrel-count reg1 1

execute store result score #barrel-count reg1 run data get block ~ ~ ~ Items[{Slot:12b}].Count
execute if entity @a[scores={reg1=1..}] if score #barrel-count reg1 matches 1.. store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run scoreboard players remove #barrel-count reg1 1

execute store result score #barrel-count reg1 run data get block ~ ~ ~ Items[{Slot:13b}].Count
execute if entity @a[scores={reg1=1..}] if score #barrel-count reg1 matches 1.. store result block ~ ~ ~ Items[{Slot:13b}].Count byte 1 run scoreboard players remove #barrel-count reg1 1

execute store result score #barrel-count reg1 run data get block ~ ~ ~ Items[{Slot:18b}].Count
execute if entity @a[scores={reg1=1..}] if score #barrel-count reg1 matches 1.. store result block ~ ~ ~ Items[{Slot:18b}].Count byte 1 run scoreboard players remove #barrel-count reg1 1

execute store result score #barrel-count reg1 run data get block ~ ~ ~ Items[{Slot:19b}].Count
execute if entity @a[scores={reg1=1..}] if score #barrel-count reg1 matches 1.. store result block ~ ~ ~ Items[{Slot:19b}].Count byte 1 run scoreboard players remove #barrel-count reg1 1

execute store result score #barrel-count reg1 run data get block ~ ~ ~ Items[{Slot:20b}].Count
execute if entity @a[scores={reg1=1..}] if score #barrel-count reg1 matches 1.. store result block ~ ~ ~ Items[{Slot:20b}].Count byte 1 run scoreboard players remove #barrel-count reg1 1

execute store result score #barrel-count reg1 run data get block ~ ~ ~ Items[{Slot:21b}].Count
execute if entity @a[scores={reg1=1..}] if score #barrel-count reg1 matches 1.. store result block ~ ~ ~ Items[{Slot:21b}].Count byte 1 run scoreboard players remove #barrel-count reg1 1

execute store result score #barrel-count reg1 run data get block ~ ~ ~ Items[{Slot:22b}].Count
execute if entity @a[scores={reg1=1..}] if score #barrel-count reg1 matches 1.. store result block ~ ~ ~ Items[{Slot:22b}].Count byte 1 run scoreboard players remove #barrel-count reg1 1

