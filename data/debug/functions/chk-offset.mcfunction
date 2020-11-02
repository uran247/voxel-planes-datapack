execute as 0-0-a-0-0 run scoreboard players set @s offsetX -2340
execute as 0-0-a-0-0 run scoreboard players set @s offsetY -350
execute as 0-0-a-0-0 run scoreboard players set @s offsetZ 3000
execute as 0-0-a-0-0 run tag @s add offset-base
scoreboard players operation 0-0-a-0-0 input1 = @s AngZ
tp 0-0-a-0-0 ^ ^ ^ ~90 ~

#execute as 0-0-a-0-0 at @s rotated ~-90 ~ run function plane:position/calc-offset
execute at @s as 0-0-a-0-0 run function plane:position/util/calc-displacement
execute at @s as 0-0-a-0-0 run function plane:position/calc-offset
execute at @s as 0-0-a-0-0 run function plane:position/util/move-parts

execute at 0-0-a-0-0 run particle minecraft:dust 1 0 0 0.2 ~ ~ ~ 0 0 0 1 0 force

tp 0-0-a-0-0 0 1 0
execute as 0-0-a-0-0 run tag @s remove offset-base
