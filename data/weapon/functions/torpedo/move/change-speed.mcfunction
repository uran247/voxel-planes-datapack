#魚雷のスピード修正
#入力　エンティティ：魚雷
execute if entity @s[tag=!sailing] run scoreboard players operation #age-ten vp.reg1 = @s vp.age
execute if entity @s[tag=!sailing] run scoreboard players operation #age-ten vp.reg1 %= #10 vp.Num
execute if entity @s[tag=!sailing] if score #age-ten vp.reg1 matches 0 run scoreboard players add @s[scores={vp.speed=..99}] vp.speed 1

execute if entity @s[tag=sailing] run scoreboard players operation #age-twelve vp.reg1 = @s vp.age
execute if entity @s[tag=sailing] run scoreboard players operation #age-twelve vp.reg1 %= #12 vp.Num
execute if entity @s[tag=sailing] if score #age-twelve vp.reg1 matches 0 run scoreboard players remove @s[scores={vp.speed=8..}] vp.speed 1

#tellraw @p [{"nbt":"Pos","entity":"@s"}] 
#tellraw @p [{"score" : {"name":"@s", "objective":"speed"}}, {"text":" "}, {"score" : {"name":"@e[tag=torpedo-init,distance=..5,limit=1]", "objective":"age"}}]
