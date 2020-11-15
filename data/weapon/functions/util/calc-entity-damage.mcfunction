#入力：entity:ダメージを与えたいエンティティ with score vp.reg1 health score vp.reg2 damage
#処理：ダメージ/防御率分HPをへらす
#戻り：score: entity vp.reg1

execute as @s[scores={defence=1..}] run scoreboard players operation @s vp.reg2 /= @s defence
scoreboard players operation @s vp.reg1 -= @s vp.reg2
execute as @s[scores={vp.reg1=..-1}] run scoreboard players set @s vp.reg1 0
