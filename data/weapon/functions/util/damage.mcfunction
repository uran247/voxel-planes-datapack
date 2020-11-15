#入力：entity: player position: player score:@s taken-damage
#処理：プレイヤーに今回のtickで受けるべきダメージを保存する
#帰り：score:@s now-hp

#合計ダメージ計算
scoreboard players operation @s vp.total-damage += @s vp.taken-damage

#ダメージを受けたフラグをつける
tag @s add get-damage

#taken-damege削除
scoreboard players reset @s vp.taken-damage

