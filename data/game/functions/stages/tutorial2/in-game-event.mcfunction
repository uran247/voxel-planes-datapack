#イベントフラグ
#航空機召喚説明メッセージ
execute if score #phase event-flag matches 0 run scoreboard players add #timer time 1
execute if score #phase event-flag matches 0 if score #timer time matches 40.. run scoreboard players set #phase event-flag 1
execute if score #phase event-flag matches 1 run scoreboard players set #timer time 0
execute if score #phase event-flag matches 1 run loot give @a loot plane-data:ki-43
execute if score #phase event-flag matches 1 run scoreboard players set @a summon-plane 0
execute if score #phase event-flag matches 1 run function game:stages/tutorial2/in-game-event/summon-explanation-1
execute if score #phase event-flag matches 1 run scoreboard players set #phase event-flag 2

#射撃説明メッセージ
execute if score #phase event-flag matches 2 run title @a times 0 3 0
execute if score #phase event-flag matches 2 run title @a title [{"text":"離陸せよ","color":"yellow","bold":false}]
execute if score #phase event-flag matches 2 if entity @e[tag=flying] run scoreboard players add #timer time 1
execute if score #phase event-flag matches 2 if entity @e[tag=flying] if score #timer time matches 20.. run scoreboard players set #phase event-flag 3
execute if score #phase event-flag matches 3 run scoreboard players set #timer time 0
execute if score #phase event-flag matches 3 run scoreboard players set #now-score clear-score 1
execute if score #phase event-flag matches 3 run function game:stages/tutorial2/in-game-event/shoot-explanation-1
execute if score #phase event-flag matches 3 as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 200 1
execute if score #phase event-flag matches 3 run scoreboard players set #phase event-flag 4

#攻撃説明
execute if score #phase event-flag matches 4 run title @a times 0 3 0
execute if score #phase event-flag matches 4 run title @a title [{"text":"機銃を試射せよ","color":"yellow","bold":false}]
execute if score #phase event-flag matches 4 if entity @e[tag=gun] run scoreboard players add #timer time 1
execute if score #phase event-flag matches 4 if entity @e[tag=gun] if score #timer time matches 20.. run scoreboard players set #phase event-flag 5
execute if score #phase event-flag matches 5 run scoreboard players set #timer time 0
execute if score #phase event-flag matches 5 run function game:stages/tutorial2/in-game-event/hunt-explanation-1
execute if score #phase event-flag matches 5 positioned -1017 150 1787 run function mob:summon/phantom1-tutorial
execute if score #phase event-flag matches 5 as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 200 1
execute if score #phase event-flag matches 5 run scoreboard players set #now-score clear-score 2
execute if score #phase event-flag matches 5 run scoreboard players set #phase event-flag 6

#飛行説明
execute if score #phase event-flag matches 6 run title @a times 0 3 0
execute if score #phase event-flag matches 6 run title @a title [{"text":"敵を撃破せよ","color":"yellow","bold":false}]
execute if score #phase event-flag matches 6 unless entity @e[tag=phantom1-tutorial] run scoreboard players add #timer time 1
execute if score #phase event-flag matches 6 unless entity @e[tag=phantom1-tutorial] if score #timer time matches 20.. run scoreboard players set #phase event-flag 7
execute if score #phase event-flag matches 7 run function game:stages/tutorial2/in-game-event/end-explanation-1
execute if score #phase event-flag matches 7 run scoreboard players set #timer time 0
execute if score #phase event-flag matches 7 run title @a title [{"text":""}]
execute if score #phase event-flag matches 7 run title @a times 20 80 20
execute if score #phase event-flag matches 7 run scoreboard players set #phase event-flag 8

#クリア
execute if score #phase event-flag matches 8 run scoreboard players add #timer time 1
execute if score #phase event-flag matches 8 if score #timer time matches 60.. run scoreboard players set #now-score clear-score 3
