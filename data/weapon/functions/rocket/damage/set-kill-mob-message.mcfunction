#
#入力：entity: @e[tag=!enemy-target]
#処理：破壊メッセージを設定
#戻り：サブタイトルのメッセージ

execute if entity @s[tag=enemy-plane,tag=!phantom1,tag=!banshee] as @p[tag=rocket-owner] run title @s subtitle {"text":"敵機撃墜","color":"gold","italic":true}
execute if entity @s[tag=enemy-plane,tag=phantom1] as @p[tag=rocket-owner] run advancement grant @s only advancements:battle/kill-phantom-i
execute if entity @s[tag=enemy-plane,tag=banshee] as @p[tag=rocket-owner] run advancement grant @s only advancements:battle/kill-banshee
execute if entity @s[tag=anti-air-gun] as @p[tag=rocket-owner] run advancement grant @s only advancements:battle/destroy-anti-air-gun
execute if entity @s[tag=howitzer] as @p[tag=rocket-owner] run advancement grant @s only advancements:battle/destroy-howitzer
