#startgame1→2の順で実行　1,2は6tick開ける
function game:start-game/util/set-game-id
function game:stages/stage3/start-game/summon-base

function game:stages/stage3/start-game/forceload
function game:stages/stage3/start-game/move-to-stage
function game:stages/stage3/start-game/show-message
function game:stages/stage3/start-game/set-bossbar

schedule function game:stages/stage3/start-game/summon-enemy 10
#execute as @a run function bgm:bunretsu/play

#開始効果音
execute as @a at @s run playsound minecraft:entity.ender_dragon.ambient master @s ~ ~ ~ 1 0.5