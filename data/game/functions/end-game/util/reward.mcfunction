#リワードを与える
#入力　entity: player
#処理　プレイヤーを実効者にしてlootでアイテムを与える

execute as @a if score #clear-rank clear-score matches 0 if score #global stage-id matches 1 run loot spawn 3 142 20 loot loot:battle-reward/stage1/rank-s
execute as @a if score #clear-rank clear-score matches 1 if score #global stage-id matches 1 run loot spawn 3 142 20 loot loot:battle-reward/stage1/rank-a
execute as @a if score #clear-rank clear-score matches 2 if score #global stage-id matches 1 run loot spawn 3 142 20 loot loot:battle-reward/stage1/rank-b
execute as @a if score #clear-rank clear-score matches 3 if score #global stage-id matches 1 run loot spawn 3 142 20 loot loot:battle-reward/stage1/rank-c

execute as @a if score #clear-rank clear-score matches 0 if score #global stage-id matches 2 run loot spawn 3 142 20 loot loot:battle-reward/stage1/rank-s
execute as @a if score #clear-rank clear-score matches 1 if score #global stage-id matches 2 run loot spawn 3 142 20 loot loot:battle-reward/stage1/rank-a
execute as @a if score #clear-rank clear-score matches 2 if score #global stage-id matches 2 run loot spawn 3 142 20 loot loot:battle-reward/stage1/rank-b
execute as @a if score #clear-rank clear-score matches 3 if score #global stage-id matches 2 run loot spawn 3 142 20 loot loot:battle-reward/stage1/rank-c

execute as @a if score #clear-rank clear-score matches 0 if score #global stage-id matches 3 run loot spawn 3 142 20 loot loot:battle-reward/stage1/rank-s
execute as @a if score #clear-rank clear-score matches 1 if score #global stage-id matches 3 run loot spawn 3 142 20 loot loot:battle-reward/stage1/rank-a
execute as @a if score #clear-rank clear-score matches 2 if score #global stage-id matches 3 run loot spawn 3 142 20 loot loot:battle-reward/stage1/rank-b
execute as @a if score #clear-rank clear-score matches 3 if score #global stage-id matches 3 run loot spawn 3 142 20 loot loot:battle-reward/stage1/rank-c

execute as @a if score #clear-rank clear-score matches 0 if score #global stage-id matches 4 run loot spawn 3 142 20 loot loot:battle-reward/stage4/rank-s
execute as @a if score #clear-rank clear-score matches 1 if score #global stage-id matches 4 run loot spawn 3 142 20 loot loot:battle-reward/stage4/rank-a
execute as @a if score #clear-rank clear-score matches 2 if score #global stage-id matches 4 run loot spawn 3 142 20 loot loot:battle-reward/stage4/rank-b
execute as @a if score #clear-rank clear-score matches 3 if score #global stage-id matches 4 run loot spawn 3 142 20 loot loot:battle-reward/stage4/rank-c

execute as @a if score #clear-rank clear-score matches 0 if score #global stage-id matches 5 run loot spawn 3 142 20 loot loot:battle-reward/stage5/rank-s
execute as @a if score #clear-rank clear-score matches 1 if score #global stage-id matches 5 run loot spawn 3 142 20 loot loot:battle-reward/stage5/rank-a
execute as @a if score #clear-rank clear-score matches 2 if score #global stage-id matches 5 run loot spawn 3 142 20 loot loot:battle-reward/stage5/rank-b
execute as @a if score #clear-rank clear-score matches 3 if score #global stage-id matches 5 run loot spawn 3 142 20 loot loot:battle-reward/stage5/rank-c