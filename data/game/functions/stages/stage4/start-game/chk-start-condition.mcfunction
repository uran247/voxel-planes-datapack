#入力　座標：スタートボタン位置
#処理　プレイヤーの準備が整ってるか確認
#返り　#chk-prepare return 0:テストNG 1:テストOK

#プレイヤーのエンダーチェストの航空機が5機以内か確認
execute as @a store result score @s reg1 run clear @s minecraft:bat_spawn_egg 0
execute as @a run function game:start-game/util/count-enderchest
execute as @a run scoreboard players operation @s reg1 += @s return
execute if entity @a[scores={reg1=6..}] run scoreboard players set #chk-prepare return 0
execute if entity @a[scores={reg1=6..}] run tellraw @a [{"text":"持ち込める航空機は5機までです","color":"yellow"}]

#Tier2以上の航空機を持ってるか判定
scoreboard players set @a reg1 0
scoreboard players set @a reg2 0
execute as @a if score @s reg1 matches 0 store result score @s reg1 if data entity @s EnderItems[{id:"minecraft:bat_spawn_egg",tag:{tier:3}}]
execute as @a if score @s reg2 matches 0 store result score @s reg2 if data entity @s Inventory[{id:"minecraft:bat_spawn_egg",tag:{tier:3}}]
execute as @a if score @s reg1 matches 0 store result score @s reg1 if data entity @s EnderItems[{id:"minecraft:bat_spawn_egg",tag:{tier:4}}]
execute as @a if score @s reg2 matches 0 store result score @s reg2 if data entity @s Inventory[{id:"minecraft:bat_spawn_egg",tag:{tier:4}}]
execute as @a if score @s reg1 matches 0 store result score @s reg1 if data entity @s EnderItems[{id:"minecraft:bat_spawn_egg",tag:{tier:5}}]
execute as @a if score @s reg2 matches 0 store result score @s reg2 if data entity @s Inventory[{id:"minecraft:bat_spawn_egg",tag:{tier:5}}]
#持ってたらフラグをNGに
execute as @a if score @s reg1 matches 1.. run scoreboard players set #chk-prepare return 0
execute as @a if score @s reg2 matches 1.. run scoreboard players set #chk-prepare return 0

#メッセージ
execute if score @s reg1 matches 1.. run tellraw @a [{"text":"Tier3以上の航空機は持ち込めません","color":"yellow"}]