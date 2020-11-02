#
#入力：entity: @e[tag=!enemy-target]
#処理：破壊メッセージを設定
#戻り：サブタイトルのメッセージ

execute if entity @s[tag=enemy-plane] as @p[tag=torpedo-owner] run title @s subtitle {"text":"敵機撃墜","color":"gold","italic":true}
execute if entity @s[tag=enemy-artillery] as @p[tag=torpedo-owner] run title @s subtitle {"text":"砲台破壊","color":"gold","italic":true}
