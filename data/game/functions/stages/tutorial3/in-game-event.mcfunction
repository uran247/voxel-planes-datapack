#イベントフラグ
#航空機召喚説明メッセージ
execute if score #phase event-flag matches 0 run scoreboard players add #timer time 1
execute if score #phase event-flag matches 0 if score #timer time matches 40.. run scoreboard players set #phase event-flag 1
execute if score #phase event-flag matches 1 run scoreboard players set #timer time 0
execute if score #phase event-flag matches 1 run loot give @a loot plane-data:d3a
execute if score #phase event-flag matches 1 run scoreboard players set @a summon-plane 0
execute if score #phase event-flag matches 1 run function game:stages/tutorial3/in-game-event/summon-explanation-1
execute if score #phase event-flag matches 1 run scoreboard players set #phase event-flag 2

#射撃説明メッセージ
execute if score #phase event-flag matches 2 run title @a times 0 3 0
execute if score #phase event-flag matches 2 run title @a title [{"text":"離陸せよ","color":"yellow","bold":false}]
execute if score #phase event-flag matches 2 if entity @e[tag=flying] run scoreboard players add #timer time 1
execute if score #phase event-flag matches 2 if entity @e[tag=flying] if score #timer time matches 20.. run scoreboard players set #phase event-flag 3
execute if score #phase event-flag matches 3 run scoreboard players set #timer time 0
execute if score #phase event-flag matches 3 run scoreboard players set #now-score clear-score 1
execute if score #phase event-flag matches 3 run function game:stages/tutorial3/in-game-event/change-weapon-explanation-1
execute if score #phase event-flag matches 3 as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 200 1
execute if score #phase event-flag matches 3 run scoreboard players set #phase event-flag 4

#攻撃説明
execute if score #phase event-flag matches 4 run title @a times 0 3 0
execute if score #phase event-flag matches 4 run title @a title [{"text":"武装を変更せよ","color":"yellow","bold":false}]
execute if score #phase event-flag matches 4 if entity @e[scores={plane-weapon=2..}] run scoreboard players add #timer time 1
execute if score #phase event-flag matches 4 if entity @e[scores={plane-weapon=2..}] if score #timer time matches 20.. run scoreboard players set #phase event-flag 5
execute if score #phase event-flag matches 5 run scoreboard players set #timer time 0
execute if score #phase event-flag matches 5 run function game:stages/tutorial3/in-game-event/bomb-explanation-1
execute if score #phase event-flag matches 5 positioned -1548 72 1234 run function mob:summon/howitzer-tutorial
execute if score #phase event-flag matches 5 as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 200 1
execute if score #phase event-flag matches 5 run scoreboard players set #now-score clear-score 2
execute if score #phase event-flag matches 5 run scoreboard players set #phase event-flag 6

#飛行説明
execute if score #phase event-flag matches 6 run title @a times 0 3 0
execute if score #phase event-flag matches 6 run title @a title [{"text":""}]
execute if score #phase event-flag matches 6 run title @a subtitle [{"text":"パーティクルの方向にいる目標を撃破せよ","color":"yellow","bold":false}]
execute if score #phase event-flag matches 6 as @a positioned -1548 200 1234 run function game:in-game-event/util/show-direction
execute if score #phase event-flag matches 6 positioned as @e[tag=howitzer-tutorial] run particle dust 1 0.65 0 2 ~ ~ ~ 1 1 1 0 10 force
execute if score #phase event-flag matches 6 unless entity @e[tag=howitzer-tutorial] run scoreboard players add #timer time 1
execute if score #phase event-flag matches 6 unless entity @e[tag=howitzer-tutorial] if score #timer time matches 20.. run scoreboard players set #phase event-flag 7
execute if score #phase event-flag matches 7 run function game:stages/tutorial3/in-game-event/end-explanation-1
execute if score #phase event-flag matches 7 run scoreboard players set #timer time 0
execute if score #phase event-flag matches 7 run title @a title [{"text":""}]
execute if score #phase event-flag matches 7 run title @a times 20 80 20
execute if score #phase event-flag matches 7 run scoreboard players set #phase event-flag 8

#クリア
execute if score #phase event-flag matches 8 run scoreboard players add #timer time 1
execute if score #phase event-flag matches 8 if score #timer time matches 60.. run scoreboard players set #now-score clear-score 3
