#game終了処理
#入力: score #clear-flag clear-score (1:clear 2:game-over)

#game終了処理を実行
execute if score #clear-flag clear-score matches 1 as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0
execute if score #clear-flag clear-score matches 2 as @a at @s run playsound minecraft:ambient.cave ambient @s ~ ~ ~ 1 2
function game:end-game/util/stop-all-bgm
function game:end-game/util/show-message
function game:end-game/util/delete-bossbar

#end-game2を遅延実行
schedule function game:end-game/end-game2 80
