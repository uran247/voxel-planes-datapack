#startgame1→2の順で実行　1,2は6tick開ける
function game:start-game/util/set-game-id
function game:stages/stage2/start-game/forceload
function game:stages/stage2/start-game/summon-spawner
function game:stages/stage2/start-game/move-to-stage
function game:stages/stage2/start-game/show-message
function game:stages/stage2/start-game/set-bossbar
#execute as @a run function bgm:bunretsu/play

#フラグセット
scoreboard players set #phase event-flag 0

#開始効果音
execute as @a at @s run playsound minecraft:entity.ender_dragon.ambient master @s ~ ~ ~ 1 0.5