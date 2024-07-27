#入力　entity: @e[tag=hitbox]
#処理　offsetに数値代入
#scoreboard players set @s offsetX 0
#scoreboard players set @s offsetY -2000
#scoreboard players set @s offsetZ -1000

tag @e[tag=250kg] add weapon-init

#scoreboard players add @e[tag=weapon-init] vp.offsetX 0
scoreboard players set @e[tag=weapon-init] vp.offsetY -0
scoreboard players add @e[tag=weapon-init] vp.offsetZ 4000

tag @e[tag=weapon-init] remove weapon-init

scoreboard players add @e[tag=plane-root] vp.AngY 1