#照準点を表示
#入力 entity 0-0-0-0-a{Rotation:[~,任意の角度]}

execute at @s rotated as 0-0-0-0-a run tp 0-0-0-0-4 ^ ^ ^200 ~ ~
#tellraw @p [{"nbt":"Pos[1]","entity":"0-0-0-0-4"}] 
execute at 0-0-0-0-4 as @s run function plane:weapon/util/check-ground
execute at 0-0-0-0-a run particle minecraft:dust 1 1 1 200 ~ ~4 ~ 10 0 0.01 0 25 force
execute at 0-0-0-0-a run particle minecraft:dust 1 1 1 200 ~ ~4 ~ 0.01 0 10 0 25 force
#tellraw @p [{"nbt":"Pos[1]","entity":"0-0-0-0-a"}] 
tp 0-0-0-0-4 0 1 0
tp 0-0-0-0-a 0 1 0
