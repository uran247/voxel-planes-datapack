#ゲーム途中退出用
function game:end-game/util/delete-bossbar
function game:end-game/util/reset-score
execute as @e[tag=plane-root] run function game:end-game/util/set-nomove
execute as @e[tag=plane-root] run function game:end-game/util/delete-plane
function game:end-game/util/move-to-lobby
function game:end-game/util/stop-all-bgm
