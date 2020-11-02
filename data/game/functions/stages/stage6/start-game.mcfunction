#startgame1→2の順で実行　1,2は6tick開ける
function game:start-game/util/set-game-id
function game:stages/stage6/start-game/forceload

function game:stages/stage6/start-game/set-bossbar
function game:stages/stage6/start-game/set-score
function game:stages/stage6/start-game/summon-target
function game:stages/stage6/start-game/move-to-stage
function game:stages/stage6/start-game/show-message

#開始効果音
execute as @a at @s run playsound minecraft:entity.ender_dragon.ambient master @s ~ ~ ~ 200 0.5