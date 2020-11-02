#目印

#味方基地破壊でゲームオーバー
execute store result bossbar minecraft:game-life value as @e[tag=friend-target] run data get entity @s HandItems[0].tag.BaseHP
execute as @e[tag=friend-target] store result score #base-hp reg1 run data get entity @s HandItems[0].tag.BaseHP
execute if score #base-hp reg1 matches ..0 run scoreboard players set #game-over clear-score 1

#撃墜スコアをクリアスコアに代入
scoreboard players operation #now-score clear-score = #global shootdown

#目標にパーティクル
execute as @e[tag=enemy-target] at @s run particle minecraft:dust 0.8 0 1 40 ~ ~ ~ 2 2 2 0 20 force
execute as @e[tag=aa] at @s run particle minecraft:dust 1 0 0.6 5 ~ ~ ~ 1 1 1 0 1 force

#榴弾の数調整
execute store result score #aa-num reg1 if entity @e[tag=aerial-aa]
execute if score #aa-num reg1 > #12 Num run kill @e[limit=1,tag=aerial-aa,sort=random]

#clear-rank設定
execute if score #game time matches ..5000 run scoreboard players set #clear-rank clear-score 0
execute if score #game time matches 5001..6500 run scoreboard players set #clear-rank clear-score 1
execute if score #game time matches 6501..8000 run scoreboard players set #clear-rank clear-score 2
execute if score #game time matches 8001.. run scoreboard players set #clear-rank clear-score 3

#撃墜スコアをクリアスコアに代入
scoreboard players operation #now-score clear-score = #global shootdown

#ボス体力をゲージに代入
execute if entity @e[tag=enemy-target,limit=1] as @e[tag=enemy-target,limit=1] store result bossbar minecraft:game-progress value run data get entity @s Health

#ボスのスキル待機時間をゲージに代入
execute if entity @e[tag=enemy-target,limit=1] as @e[tag=enemy-target,limit=1] store result bossbar minecraft:boss-skill value run scoreboard players get @s skill-ct

#イベントフラグ
#BGM開始　
execute if score #phase event-flag matches 0 if entity @p[tag=plane-rider] run scoreboard players set #phase event-flag 1
execute if score #phase event-flag matches 1 as @a at @s run function bgm:jonny/play
#BGM開始したらフラグを次フェーズへ
execute if score #phase event-flag matches 1 run scoreboard players set #phase event-flag 2

#目標地点まで向かう指示
execute if score #phase event-flag matches 2 run title @a times 0 80 20
execute if score #phase event-flag matches 2 run title @a title {"text":"目標地点へ向かえ","color":"yellow","bold":false}
execute if score #phase event-flag matches 2 as @a positioned 3732 300 -6055 run function game:in-game-event/util/show-direction
#目標地点へ到達orボスにダメージしたらフラグを次フェーズへ
execute if score #phase event-flag matches 2 store result score #bossbar reg1 run bossbar get minecraft:game-progress value
execute if score #phase event-flag matches 2 if score #bossbar reg1 matches ..1023 run scoreboard players set #phase event-flag 3
execute if score #phase event-flag matches 2 positioned 3732 300 -6055 positioned ~-128 0 ~-128 if entity @p[dx=128,dy=1024,dz=128] run scoreboard players set #phase event-flag 3
execute if score #phase event-flag matches 3 as @a positioned 3732 300 -6055 unless entity @s[distance=..378] run function game:in-game-event/util/show-direction
