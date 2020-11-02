#選択されるステージを決定

#ステージを選択
#scoreboard players set #global stage-id 1

#mob最大数をセット
scoreboard players set #max max-entity 10

#プレイ時間リセット
scoreboard players set #game time 0

#game開始フラグセット
scoreboard players set #is-in-game stage-id 1

#フラグセット
scoreboard players set #phase event-flag 0

#stageに応じたfunction実行
execute if score #global stage-id matches 2147483647 run function game:stages/tutorial1/start-game
execute if score #global stage-id matches 2147483646 run function game:stages/tutorial2/start-game
execute if score #global stage-id matches 2147483645 run function game:stages/tutorial3/start-game
execute if score #global stage-id matches 2147483644 run function game:stages/debug1/start-game
execute if score #global stage-id matches 1 run function game:stages/stage1/start-game
execute if score #global stage-id matches 2 run function game:stages/stage2/start-game
execute if score #global stage-id matches 3 run function game:stages/stage3/start-game
execute if score #global stage-id matches 4 run function game:stages/stage4/start-game
execute if score #global stage-id matches 5 run function game:stages/stage5/start-game
execute if score #global stage-id matches 6 run function game:stages/stage6/start-game