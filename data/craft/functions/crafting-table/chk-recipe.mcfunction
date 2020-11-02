#入力：position:crafting-table
#処理：0-0-5-0-0とloottableを参照してコンテナにアイテムを突っ込む
#replaceitem block ~ ~ ~ container.16 minecraft:air
execute as 0-0-5-0-0 run loot replace block ~ ~ ~ container.16 fish loot:craft/display-craft-item ~ ~ ~ mainhand