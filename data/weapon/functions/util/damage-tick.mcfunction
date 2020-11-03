#入力：entity:@a[tag=get-damage] score: @s total-damage
#処理：新HPを計算してscoretohealthに渡す
#帰り：score @s scoretohealth

#新HP計算
execute store result score @s ScoreToHealth run data get entity @s Health
scoreboard players operation @s ScoreToHealth -= @s total-damage
scoreboard players operation @s ScoreToHealth *= #100 Num

#ダメージリセット
scoreboard players reset @s total-damage
tag @s remove get-damage
