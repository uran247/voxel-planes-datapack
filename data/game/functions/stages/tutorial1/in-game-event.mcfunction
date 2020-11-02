#イベントフラグ
#航空機召喚説明メッセージ
execute if score #phase event-flag matches 0 run scoreboard players add #timer time 1
execute if score #phase event-flag matches 0 if score #timer time matches 40.. run scoreboard players set #phase event-flag 1
execute if score #phase event-flag matches 1 run scoreboard players set #timer time 0
execute if score #phase event-flag matches 1 run loot give @a loot plane-data:ki-43
execute if score #phase event-flag matches 1 run scoreboard players set @a summon-plane 0
execute if score #phase event-flag matches 1 run function game:stages/tutorial1/in-game-event/summon-explanation-1
execute if score #phase event-flag matches 1 run scoreboard players set #phase event-flag 2

#離陸説明メッセージ
execute if score #phase event-flag matches 2 run title @a times 0 3 0
execute if score #phase event-flag matches 2 run title @a title [{"text":"航空機を召喚せよ","color":"yellow","bold":false}]
execute if score #phase event-flag matches 2 if entity @p[scores={summon-plane=1..}] run scoreboard players add #timer time 1
execute if score #phase event-flag matches 2 if entity @p[scores={summon-plane=1..}] if score #timer time matches 20.. run scoreboard players set #phase event-flag 3
execute if score #phase event-flag matches 3 run scoreboard players set #timer time 0
execute if score #phase event-flag matches 3 run scoreboard players set #now-score clear-score 1
execute if score #phase event-flag matches 3 run function game:stages/tutorial1/in-game-event/ride-explanation-1
execute if score #phase event-flag matches 3 as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 200 1
execute if score #phase event-flag matches 3 run scoreboard players set #phase event-flag 4

#離陸説明
execute if score #phase event-flag matches 4 run title @a times 0 3 0
execute if score #phase event-flag matches 4 run title @a title [{"text":"航空機に搭乗せよ","color":"yellow","bold":false}]
execute if score #phase event-flag matches 4 if entity @p[tag=plane-rider] run scoreboard players add #timer time 1
execute if score #phase event-flag matches 4 if entity @p[tag=plane-rider] if score #timer time matches 20.. run scoreboard players set #phase event-flag 5
execute if score #phase event-flag matches 5 run scoreboard players set #timer time 0
execute if score #phase event-flag matches 5 run function game:stages/tutorial1/in-game-event/takeoff-explanation-1
execute if score #phase event-flag matches 5 as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 200 1
execute if score #phase event-flag matches 5 run scoreboard players set #phase event-flag 6

#飛行説明
execute if score #phase event-flag matches 6 run title @a times 0 3 0
execute if score #phase event-flag matches 6 run title @a title [{"text":"速度を上げ離陸せよ","color":"yellow","bold":false}]
execute if score #phase event-flag matches 6 if entity @e[tag=flying] run scoreboard players add #timer time 1
execute if score #phase event-flag matches 6 if entity @e[tag=flying] if score #timer time matches 20.. run scoreboard players set #phase event-flag 7
execute if score #phase event-flag matches 7 run function game:stages/tutorial1/in-game-event/controll-explanation-1
execute if score #phase event-flag matches 7 run scoreboard players set #now-score clear-score 2
execute if score #phase event-flag matches 7 as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 200 1
execute if score #phase event-flag matches 7 run scoreboard players set #phase event-flag 8

#着陸説明
execute if score #phase event-flag matches 8 run scoreboard players add #timer time 1
execute if score #phase event-flag matches 8 if score #timer time matches 200.. run function game:stages/tutorial1/in-game-event/landing-explanation-1
execute if score #phase event-flag matches 8 if score #timer time matches 200.. run scoreboard players set #phase event-flag 9

#説明終了
execute if score #phase event-flag matches 9 run title @a times 0 3 0
execute if score #phase event-flag matches 9 run title @a title [{"text":"速度を下げ着陸せよ","color":"yellow","bold":false}]
execute if score #phase event-flag matches 9 unless entity @e[tag=plane-root,scores={speed=1..}] run function game:stages/tutorial1/in-game-event/end-explanation-1
execute if score #phase event-flag matches 9 unless entity @e[tag=plane-root,scores={speed=1..}] run scoreboard players set #timer time 0
execute if score #phase event-flag matches 9 unless entity @e[tag=plane-root,scores={speed=1..}] run title @a title [{"text":""}]
execute if score #phase event-flag matches 9 unless entity @e[tag=plane-root,scores={speed=1..}] run title @a times 20 80 20
execute if score #phase event-flag matches 9 unless entity @e[tag=plane-root,scores={speed=1..}] run scoreboard players set #phase event-flag 10

#クリア
execute if score #phase event-flag matches 10 run scoreboard players add #timer time 1
execute if score #phase event-flag matches 10 if score #timer time matches 60.. run scoreboard players set #now-score clear-score 3
