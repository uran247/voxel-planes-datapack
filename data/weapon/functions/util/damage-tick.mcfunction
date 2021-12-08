#入力：entity:@a[tag=get-damage] score: @s total-damage
#処理：新HPを計算してscoretohealthに渡す
#帰り：score @s scoretohealth

#新HP計算
execute store result score @s ScoreToHealth run data get entity @s Health
scoreboard players operation @s ScoreToHealth -= @s vp.total-damage
scoreboard players operation @s ScoreToHealth *= #100 vp.Num

#0の場合プレイヤーをキル
execute as @s[scores={ScoreToHealth=..0}] run kill @s

#ダメージリセット
scoreboard players reset @s vp.total-damage
tag @s remove get-damage
