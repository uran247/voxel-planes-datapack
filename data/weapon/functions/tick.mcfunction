#> weapon:tick
#
# 発射された武器の操作に関連する処理
#
# @within tag/function minecraft:tick

#> tag
# @within weapon:**
    #declare tag hit-on-line
    #declare tag entity-nohit

execute as @e[tag=gun] at @s run function weapon:gun/gun-manager
execute as @e[tag=dropping] at @s run function weapon:dropping/dropping-manager
execute as @e[tag=rocket-moving] at @s run function weapon:rocket/rocket-manager
execute as @e[tag=aagun] at @s run function weapon:aagun/aagun-manager
execute as @e[tag=torpedo-dropping] at @s run function weapon:torpedo/torpedo-manager
execute as @e[tag=he] at @s run function weapon:howitzer/howitzer-manager
execute as @e[tag=he] at @s run function weapon:howitzer/howitzer-manager
execute as @e[tag=missile-moving,tag=ir-missile] at @s run function weapon:missile/ir-missile-manager
execute as @a[tag=get-damage] at @a run function weapon:util/damage-tick
