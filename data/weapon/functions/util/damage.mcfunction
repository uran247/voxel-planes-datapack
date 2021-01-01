#> weapon:util/damage
#
# プレイヤーのスコアに今回のtickで受けるべきダメージを保存する
#
# @input
#   executer @p
#
# @output
#   score @s vp.total-damage
#
# @within function weapon:**
#

#合計ダメージ計算
scoreboard players operation @s vp.total-damage += @s vp.taken-damage

#ダメージを受けたフラグをつける
tag @s add get-damage

#taken-damege削除
scoreboard players reset @s vp.taken-damage

