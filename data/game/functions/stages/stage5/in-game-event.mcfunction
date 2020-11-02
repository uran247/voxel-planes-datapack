#目印

#味方基地破壊でゲームオーバー
execute store result bossbar minecraft:game-life value as @e[tag=friend-target] run data get entity @s HandItems[0].tag.BaseHP
execute as @e[tag=friend-target] store result score #base-hp reg1 run data get entity @s HandItems[0].tag.BaseHP
execute if score #base-hp reg1 matches ..0 run scoreboard players set #game-over clear-score 1

#撃墜スコアをクリアスコアに代入
scoreboard players operation #now-score clear-score = #global shootdown

#榴弾砲の操作
execute as @e[tag=howitzer152] at @s run function game:stages/stage5/in-game-event/controll-howitzer

#目標にパーティクル
execute as @e[tag=enemy-target] at @s run particle minecraft:dust 1 0.65 0 5 ~ ~ ~ 1 1 1 0 1 force

#榴弾の数調整
execute store result score #he-num reg1 if entity @e[tag=he]
execute if score #he-num reg1 > #30 Num run kill @e[limit=1,tag=he,sort=random]

#基地のHP減少
scoreboard players operation #remainder reg1 = #game time
scoreboard players operation #remainder reg1 %= #100 Num
scoreboard players operation #damage reg1 = #100 Num
execute if score #remainder reg1 matches 0 positioned 4600 46 -6130 as @e[tag=base,distance=..1] run function game:stages/stage5/in-game-event/base-damage

#clear-rank設定
execute if score #game time matches ..5000 run scoreboard players set #clear-rank clear-score 0
execute if score #game time matches 5001..6500 run scoreboard players set #clear-rank clear-score 1
execute if score #game time matches 6501..8000 run scoreboard players set #clear-rank clear-score 2
execute if score #game time matches 8001.. run scoreboard players set #clear-rank clear-score 3

#イベントフラグ
#BGM開始　
execute if score #phase event-flag matches 0 if entity @p[tag=plane-rider] run scoreboard players set #phase event-flag 1
execute if score #phase event-flag matches 1 as @a at @s run function bgm:jonny/play
#BGM開始したらフラグを次フェーズへ
execute if score #phase event-flag matches 1 run scoreboard players set #phase event-flag 2

#目標地点まで向かう指示
execute if score #phase event-flag matches 2 run title @a times 0 80 20
execute if score #phase event-flag matches 2 run title @a title {"text":"目標地点へ向かえ","color":"yellow","bold":false}
execute if score #phase event-flag matches 2 as @a positioned 4792 200 -5388 run function game:in-game-event/util/show-direction
#目標地点へ到達したらフラグを次フェーズへ
execute if score #phase event-flag matches 2 if score #now-score clear-score matches 1.. run scoreboard players set #phase event-flag 3
execute if score #phase event-flag matches 2 positioned 4792 200 -5388 positioned ~-64 0 ~-64 if entity @p[dx=128,dy=1024,dz=128] run scoreboard players set #phase event-flag 3
execute if score #phase event-flag matches 3 as @a positioned 4792 200 -5388 unless entity @s[distance=..378] run function game:in-game-event/util/show-direction
