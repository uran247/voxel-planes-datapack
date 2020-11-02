#魚雷のスピード修正
#入力　エンティティ：魚雷
execute if entity @s[tag=!sailing] run scoreboard players operation #age-ten reg1 = @s age
execute if entity @s[tag=!sailing] run scoreboard players operation #age-ten reg1 %= #10 Num
execute if entity @s[tag=!sailing] if score #age-ten reg1 matches 0 run scoreboard players add @s[scores={speed=..99}] speed 1

execute if entity @s[tag=sailing] run scoreboard players operation #age-twelve reg1 = @s age
execute if entity @s[tag=sailing] run scoreboard players operation #age-twelve reg1 %= #12 Num
execute if entity @s[tag=sailing] if score #age-twelve reg1 matches 0 run scoreboard players remove @s[scores={speed=8..}] speed 1

#tellraw @p [{"nbt":"Pos","entity":"@s"}] 
#tellraw @p [{"score" : {"name":"@s", "objective":"speed"}}, {"text":" "}, {"score" : {"name":"@e[tag=torpedo-init,distance=..5,limit=1]", "objective":"age"}}]
