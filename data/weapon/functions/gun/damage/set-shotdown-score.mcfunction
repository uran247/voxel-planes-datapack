#> weapon:gun/damage/set-shotdown-score
#
# 撃破したエンティティを数えて撃墜スコアを増やす
#
# @input
#   executer @p[tag=bullet-owner]
#
# @within function weapon:**
#

#> private
# @private
    #declare score_holder #kill-num #kill数を示す

#倒した敵航空機カウント
execute store result score #kill-num vp.reg1 if entity @e[tag=hit-weapon,tag=enemy-plane,tag=!enemy-target,scores={vp.reg1=0},distance=..20]

#スコア増加
scoreboard players operation #destroy-num vp.reg1 *= #5 vp.Num
scoreboard players operation #global vp.shootdown += #destroy-num vp.reg1
scoreboard players operation @s vp.shootdown += #destroy-num vp.reg1
scoreboard players operation @s vp.shootdown += #kill-num vp.reg1
