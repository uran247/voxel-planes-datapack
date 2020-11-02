#目印セット
#execute as @e[tag=stage2,tag=mark,x=-1913,y=255,z=-1766,distance=..1] at @s run function game:in-game-event/util/set-circle

#基地HPをクリアスコアに代入
execute as @e[tag=enemy-base] store result score #now-score reg1 run data get entity @s HandItems[0].tag.BaseHP
scoreboard players operation #now-score clear-score = #global clear-score
scoreboard players operation #now-score clear-score -= #now-score reg1

#clear-rank設定
execute if score #game time matches ..6000 run scoreboard players set #clear-rank clear-score 0
execute if score #game time matches 6001..7500 run scoreboard players set #clear-rank clear-score 1
execute if score #game time matches 7501..9000 run scoreboard players set #clear-rank clear-score 2
execute if score #game time matches 9001.. run scoreboard players set #clear-rank clear-score 3

#目標にパーティクル
execute as @e[tag=enemy-target] at @s run particle minecraft:dust 1 0.65 0 5 ~ ~ ~ 15 1 1 0 20 force
execute as @e[tag=enemy-target] at @s run particle minecraft:dust 1 0.65 0 5 ~ ~ ~ 1 1 15 0 20 force

#イベントフラグ
#BGM開始　
execute if score #phase event-flag matches 0 if entity @p[tag=plane-rider] run scoreboard players set #phase event-flag 1
execute if score #phase event-flag matches 1 as @a at @s run function bgm:bunretsu/play
#BGM開始したらフラグを次フェーズへ
execute if score #phase event-flag matches 1 run scoreboard players set #phase event-flag 2

#目標地点まで向かう指示
execute if score #phase event-flag matches 2 run title @a times 0 80 20
execute if score #phase event-flag matches 2 run title @a title {"text":"目標地点へ向かえ","color":"yellow","bold":false}
execute if score #phase event-flag matches 2 as @a positioned -1888 200 -2112 run function game:in-game-event/util/show-direction
#目標地点へ到達したらフラグを次フェーズへ
execute if score #phase event-flag matches 2 if score #now-score clear-score matches 1.. run scoreboard players set #phase event-flag 3
execute if score #phase event-flag matches 2 positioned -1888 0 -2112 if entity @p[dx=128,dy=1024,dz=128] run scoreboard players set #phase event-flag 3
execute if score #phase event-flag matches 3 as @a positioned -1877 200 -2084 unless entity @s[distance=..378] run function game:in-game-event/util/show-direction

#tellraw @p [{"score" : {"name":"#phase", "objective":"event-flag"}}, {"text":" "}]
