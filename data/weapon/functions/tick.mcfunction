#tickタグで指定して実行
execute as @e[tag=gun] at @s run function weapon:gun/gun-manager
execute as @e[tag=dropping] at @s run function weapon:dropping/dropping-manager
execute as @e[tag=rocket-moving] at @s run function weapon:rocket/rocket-manager
execute as @e[tag=aagun] at @s run function weapon:aagun/aagun-manager
execute as @e[tag=torpedo] at @s run function weapon:torpedo/torpedo-manager
execute as @e[tag=he] at @s run function weapon:howitzer/howitzer-manager
execute as @e[tag=weapon-summoner] at @s run function weapon:equip/equip-manager


#execute as @e[tag=a6m-root] at @s run function math:vector-3input
