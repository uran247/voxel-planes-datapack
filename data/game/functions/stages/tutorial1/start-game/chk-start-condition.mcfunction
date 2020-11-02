#入力　座標：スタートボタン位置
#処理　プレイヤーの準備が整ってるか確認
#返り　#chk-prepare return 0:テストNG 1:テストOK

#プレイヤーのエンダーチェストの航空機が5機以内か確認
execute as @a store result score @s reg1 run clear @s minecraft:bat_spawn_egg 0
execute as @a run function game:start-game/util/count-enderchest
execute as @a run scoreboard players operation @s reg1 += @s return
execute if entity @a[scores={reg1=1..}] run scoreboard players set #chk-prepare return 0
execute if entity @a[scores={reg1=1..}] run tellraw @a [{"text":"航空機の持ち込みはできません","color":"yellow"}]
