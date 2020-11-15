#
#入力：@p[tag=bullet-owner]
#処理：撃破したエンティティを数えて撃墜スコアを増やす
#戻り：

#倒したのが敵航空機カウント
execute store result score #kill-num vp.reg1 if entity @e[tag=!entity-nohit,distance=..3,scores={vp.reg1=0},tag=!enemy-target,type=!minecraft:player]

#スコア増加
scoreboard players operation #destroy-num vp.reg1 *= #5 vp.Num
scoreboard players operation #global vp.shootdown += #destroy-num vp.reg1
scoreboard players operation @s vp.shootdown += #destroy-num vp.reg1
scoreboard players operation @s vp.shootdown += #kill-num vp.reg1
