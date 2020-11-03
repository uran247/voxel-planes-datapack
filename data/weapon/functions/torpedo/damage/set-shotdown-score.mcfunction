#
#入力：@p[tag=torpedo-owner]
#処理：撃破したエンティティを数えて撃墜スコアを増やす
#戻り：

#倒したのが敵航空機カウント
execute store result score #kill-num reg1 if entity @e[tag=!entity-nohit,distance=..16,scores={reg1=0},tag=!enemy-target,type=!minecraft:player]

#スコア増加
scoreboard players operation #destroy-num reg1 *= #5 Num
scoreboard players operation #global shootdown += #destroy-num reg1
scoreboard players operation @s shootdown += #destroy-num reg1
scoreboard players operation @s shootdown += #kill-num reg1
