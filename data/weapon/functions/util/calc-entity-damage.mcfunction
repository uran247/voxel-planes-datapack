#入力：entity:ダメージを与えたいエンティティ with score reg1 health score reg2 damage
#処理：ダメージ/防御率分HPをへらす
#戻り：score: entity reg1

execute as @s[scores={defence=1..}] run scoreboard players operation @s reg2 /= @s defence
scoreboard players operation @s reg1 -= @s reg2
execute as @s[scores={reg1=..-1}] run scoreboard players set @s reg1 0
