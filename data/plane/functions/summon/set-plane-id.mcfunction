#plane-initがついてるエンティティにID付与
#入力：実行者:plane-root 
#出力：plane-initタグのついたエンティティすべてに入力のUUIDをidに変換した値付与
execute as @e[tag=plane-init,tag=plane-root,limit=1] store result score @s vp.plane-id run data get entity @s UUID[0]
scoreboard players operation @e[tag=plane-init,tag=plane-root,limit=1,scores={vp.plane-id=..-1}] vp.plane-id *= #-1 vp.Num
scoreboard players operation @e[tag=plane-init] vp.plane-id = @e[tag=plane-init,tag=plane-root,limit=1] vp.plane-id
execute as @e[tag=plane-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
