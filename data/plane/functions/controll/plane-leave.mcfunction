#飛行機から降りるときの処理
#入力：entity player
scoreboard players reset @s plane-id
scoreboard players set @s plane-key-input 0
clear @s minecraft:carrot_on_a_stick{item-type:controll-rod}
clear @s minecraft:paper{item-type:indicator}
tag @s remove plane-rider
tag @s remove entity-nohit
