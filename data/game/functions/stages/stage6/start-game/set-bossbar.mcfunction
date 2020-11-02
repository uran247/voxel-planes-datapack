#ボスバーセットと撃墜数リセット
scoreboard players set @a shootdown 0
scoreboard players set #global shootdown 0

bossbar add game-progress "ボスHP"
bossbar set minecraft:game-progress players @a
bossbar set minecraft:game-progress max 1024
bossbar set minecraft:boss-skill color purple
bossbar add boss-skill "スキル待機時間"
bossbar set minecraft:boss-skill players @a
bossbar set minecraft:boss-skill max 100
bossbar set minecraft:boss-skill color red


#ステージに応じてクリア撃墜数をセット
scoreboard players set #global clear-score 1