#plane-initがついてるエンティティにID付与
#入力：実行者:plane-root 
#出力：plane-initタグのついたエンティティすべてに入力のUUIDをidに変換した値付与
execute as @e[tag=plane-init,tag=plane-root,limit=1] store result score @s plane-id run data get entity @s UUIDMost 0.000000000233
scoreboard players operation @e[tag=plane-init,tag=plane-root,limit=1,scores={plane-id=..-1}] plane-id *= #-1 Num
scoreboard players operation @e[tag=plane-init] plane-id = @e[tag=plane-init,tag=plane-root,limit=1] plane-id
execute as @e[tag=plane-init] store result entity @s Attributes[{Name:"generic.knockbackResistance"}].Base double 1 run scoreboard players get @s plane-id
