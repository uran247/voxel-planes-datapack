#移動処理
#入力 #hit-flag reg1

execute if score #speed-decimal reg1 matches 0 at @s run function weapon:torpedo/move/move
execute if score #speed-decimal reg1 matches 1 at @s positioned ^ ^ ^0.1 run function weapon:torpedo/move/move
execute if score #speed-decimal reg1 matches 2 at @s positioned ^ ^ ^0.2 run function weapon:torpedo/move/move
execute if score #speed-decimal reg1 matches 3 at @s positioned ^ ^ ^0.3 run function weapon:torpedo/move/move
execute if score #speed-decimal reg1 matches 4 at @s positioned ^ ^ ^0.4 run function weapon:torpedo/move/move
execute if score #speed-decimal reg1 matches 5 at @s positioned ^ ^ ^0.5 run function weapon:torpedo/move/move
execute if score #speed-decimal reg1 matches 6 at @s positioned ^ ^ ^0.6 run function weapon:torpedo/move/move
execute if score #speed-decimal reg1 matches 7 at @s positioned ^ ^ ^0.7 run function weapon:torpedo/move/move
execute if score #speed-decimal reg1 matches 8 at @s positioned ^ ^ ^0.8 run function weapon:torpedo/move/move
execute if score #speed-decimal reg1 matches 9 at @s positioned ^ ^ ^0.9 run function weapon:torpedo/move/move

#particle
execute if entity @s[tag=sailing] at @s positioned ^ ^ ^0.9 run particle minecraft:bubble ^ ^1.2 ^-3 0 0 0 0 3 force