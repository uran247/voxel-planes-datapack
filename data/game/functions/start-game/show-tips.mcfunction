#tipsをランダムに表示
function math:get-rand
scoreboard players operation #rand reg1 = #rand return
scoreboard players operation #rand reg1 %= #6 Num

execute if score #rand reg1 matches 0 run tellraw @a [{"text":"[Tips:Tier1航空機はフリー金塊を使い無料購入できます]","color":"yellow","bold":false}]
execute if score #rand reg1 matches 1 run tellraw @a [{"text":"[Tips:機銃によって弾速が異なります]","color":"yellow","bold":false}]
execute if score #rand reg1 matches 2 run tellraw @a [{"text":"[Tips:後部機銃は敵が近づいた時に自動発射されます]","color":"yellow","bold":false}]
execute if score #rand reg1 matches 3 run tellraw @a [{"text":"[Tips:敵を攻撃するときは背後に回り込むと安全です]","color":"yellow","bold":false}]
execute if score #rand reg1 matches 4 run tellraw @a [{"text":"[Tips:ステージを素早くクリアすると良い報酬がもらえます]","color":"yellow","bold":false}]
execute if score #rand reg1 matches 5 run tellraw @a [{"text":"[Tips:レンチを使うと航空機をアイテム化することができます]","color":"yellow","bold":false}]