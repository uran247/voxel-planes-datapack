execute as 0-0-0-0-a run scoreboard players set @s offsetX -2340
execute as 0-0-0-0-a run scoreboard players set @s offsetY -350
execute as 0-0-0-0-a run scoreboard players set @s offsetZ 3000
execute as 0-0-0-0-a run tag @s add offset-base
scoreboard players operation 0-0-0-0-a input1 = @s AngZ
tp 0-0-0-0-a ^ ^ ^ ~90 ~

#execute as 0-0-0-0-a at @s rotated ~-90 ~ run function plane:position/calc-offset
execute at @s as 0-0-0-0-a run function plane:position/util/calc-displacement
execute at @s as 0-0-0-0-a run function plane:position/calc-offset
execute at @s as 0-0-0-0-a run function plane:position/util/move-parts

execute at 0-0-0-0-a run particle minecraft:dust 1 0 0 0.2 ~ ~ ~ 0 0 0 1 0 force

tp 0-0-0-0-a 0 1 0
execute as 0-0-0-0-a run tag @s remove offset-base
