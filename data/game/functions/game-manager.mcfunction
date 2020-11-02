#ゲームの状態を監視してアクション

#進捗度をバーに反映
execute store result bossbar minecraft:game-progress value run scoreboard players get #now-score clear-score

#game-idが異なるenemy-target,friend-targetをすべてkill
execute as @e[scores={game-id=-2147483648..2147483647}] unless score @s game-id = #global game-id run kill @s

#ゲーム内イベント実行
execute if score #is-in-game stage-id matches 1.. run function game:in-game-event/in-game-event-manager

#ゲームオーバーフラグが立ったらゲームオーバー
execute if score #game-over clear-score matches 1.. run scoreboard players set #clear-flag clear-score 2
execute if score #game-over clear-score matches 1.. run function game:end-game/end-game1

#クリアスコアに達したらゲーム終了
execute if score #global clear-score matches 1.. if score #now-score clear-score >= #global clear-score run scoreboard players set #clear-flag clear-score 1
execute if score #global clear-score matches 1.. if score #now-score clear-score >= #global clear-score run function game:end-game/end-game1

#経過時間測定
scoreboard players add #game time 1
