#入力　座標：スタートボタン位置
#処理　プレイヤーの準備が整ってるか確認
#返り　#chk-prepare return 0:テストNG 1:テストOK

#テストパスフラグを1に
scoreboard players set #chk-prepare return 1

#プレイヤーが実行地点周囲に集まってるか確認
execute store result score #player-all-num reg1 if entity @a
execute store result score #player-around-num reg1 if entity @a[distance=..20]
execute unless score #player-all-num reg1 = #player-around-num reg1 run scoreboard players set #chk-prepare return 0
execute unless score #player-all-num reg1 = #player-around-num reg1 run tellraw @a [{"text":"プレイヤーが全員集まっていません","color":"yellow"}]

#stageごとのチェック実施
execute if score #global stage-id matches 2147483647 run function game:stages/tutorial1/start-game/chk-start-condition
execute if score #global stage-id matches 2147483646 run function game:stages/tutorial2/start-game/chk-start-condition
execute if score #global stage-id matches 2147483645 run function game:stages/tutorial2/start-game/chk-start-condition
execute if score #global stage-id matches 2147483644 run function game:stages/debug1/start-game/chk-start-condition
execute if score #global stage-id matches 1 run function game:stages/stage1/start-game/chk-start-condition
execute if score #global stage-id matches 2 run function game:stages/stage2/start-game/chk-start-condition
execute if score #global stage-id matches 3 run function game:stages/stage3/start-game/chk-start-condition
execute if score #global stage-id matches 4 run function game:stages/stage4/start-game/chk-start-condition
execute if score #global stage-id matches 5 run function game:stages/stage5/start-game/chk-start-condition
execute if score #global stage-id matches 6 run function game:stages/stage6/start-game/chk-start-condition