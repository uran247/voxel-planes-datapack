#ボスバーセットと撃墜数リセット
scoreboard players set @a shootdown 0
scoreboard players set #global shootdown 0

#bossbar add game-progress "完了度"
#bossbar set minecraft:game-progress players @a
#bossbar set minecraft:game-progress max 3

#ステージに応じてクリア撃墜数をセット
scoreboard players set #global clear-score 3