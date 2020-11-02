#敵の数が０になったら召喚
execute store result score #enemy-num reg1 if entity @e[tag=enemy-target]
execute if score #enemy-num reg1 matches 0 run function game:stages/stage1/in-game-event/summon-target

#エンティティ数調整
execute if score #enemy-num reg1 > #max max-entity run kill @e[limit=1,tag=enemy-target,sort=random]

#撃墜スコアをクリアスコアに代入
scoreboard players operation #now-score clear-score = #global shootdown

#clear-rank設定
execute if score #game time matches ..4000 run scoreboard players set #clear-rank clear-score 0
execute if score #game time matches 4001..5000 run scoreboard players set #clear-rank clear-score 1
execute if score #game time matches 5001..6000 run scoreboard players set #clear-rank clear-score 2
execute if score #game time matches 6001.. run scoreboard players set #clear-rank clear-score 3

#目標にパーティクル
execute as @e[tag=enemy-target] at @s run particle minecraft:dust 1 0.65 0 5 ~ ~ ~ 1 1 1 0 1 force

#イベントフラグ
#BGM開始　
execute if score #phase event-flag matches 0 if entity @p[tag=plane-rider] run scoreboard players set #phase event-flag 1
execute if score #phase event-flag matches 1 as @a at @s run function bgm:bunretsu/play
#BGM開始したらフラグを次フェーズへ
execute if score #phase event-flag matches 1 run scoreboard players set #phase event-flag 2

#目標地点まで向かう指示
execute if score #phase event-flag matches 2 run title @a times 0 80 20
execute if score #phase event-flag matches 2 run title @a title {"text":"目標地点へ向かえ","color":"yellow","bold":false}
execute if score #phase event-flag matches 2 as @a positioned -1788 200 -1884 run function game:in-game-event/util/show-direction

#目標地点へ到達orクリアスコアが増えたらしたらフラグを次フェーズへ
execute if score #phase event-flag matches 2 if score #now-score clear-score matches 1.. run scoreboard players set #phase event-flag 3
execute if score #phase event-flag matches 2 positioned -1788 0 -1884 if entity @p[dx=128,dy=1024,dz=128] run scoreboard players set #phase event-flag 3
execute if score #phase event-flag matches 3 as @a positioned -1888 200 -2112 unless entity @s[distance=..378] run function game:in-game-event/util/show-direction
