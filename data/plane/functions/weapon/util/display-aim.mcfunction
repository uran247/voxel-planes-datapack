#> plane:weapon/util/display-aim
#
# @input
#   executer @e[tag=plane-root]
#
# @within function plane:weapon/weapon-manager

execute if entity @s[tag=normal-bomber] at @s run tp 0-0-0-0-a ~ ~ ~ ~ ~15
execute if entity @s[tag=dive-bomber] at @s run tp 0-0-0-0-a ~ ~ ~ ~ ~30
execute if entity @s[tag=normal-bomber] run function plane:weapon/util/bomb-aim
execute if entity @s[tag=dive-bomber] run function plane:weapon/util/bomb-aim
