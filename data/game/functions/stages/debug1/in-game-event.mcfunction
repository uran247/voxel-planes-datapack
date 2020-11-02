#イベントフラグ
#離陸判定
execute if score #phase event-flag matches 0 if entity @e[tag=flying] run scoreboard players add #timer time 1
execute if score #phase event-flag matches 0 if entity @e[tag=flying] if score #timer time matches 20.. run scoreboard players set #phase event-flag 1

execute if score #phase event-flag matches 1 store result score #enemy-num reg1 if entity @e[tag=phantom1-tutorial]
execute if score #phase event-flag matches 1 if score #enemy-num reg1 matches ..2 if entity @e[tag=flying] positioned -1017 150 1787 run function mob:summon/phantom1-tutorial
#tellraw @p [{"score" : {"name":"#phase", "objective":"event-flag"}}, {"text":" "}, {"score" : {"name":"@e[tag=gun-init,tag=right,limit=1,distance=..5]", "objective":"reg2"}}]


#クリア
execute if score #phase event-flag matches 3 run scoreboard players add #timer time 1
execute if score #phase event-flag matches 3 if score #timer time matches 60.. run scoreboard players set #now-score clear-score 3
