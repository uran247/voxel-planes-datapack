#
#入力：@p[tag=bullet-owner]
#処理：撃破したエンティティを数えて撃墜スコアを増やす
#戻り：

#倒した敵航空機カウント
execute store result score #kill-num reg1 if entity @e[tag=hit-weapon,distance=..20,scores={reg1=0},tag=!enemy-target,tag=enemy-plane]

#ターゲット破壊数カウント（配布マップ用）
execute store result score #destroy-num reg1 if entity @e[tag=hit-weapon,distance=..20,scores={reg1=0},tag=enemy-target]

#スコア増加
scoreboard players operation #destroy-num reg1 *= #5 Num
scoreboard players operation #global shootdown += #destroy-num reg1
scoreboard players operation @s shootdown += #destroy-num reg1
scoreboard players operation @s shootdown += #kill-num reg1
