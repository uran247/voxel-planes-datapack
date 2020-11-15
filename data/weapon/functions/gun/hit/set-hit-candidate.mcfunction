#入力　エンティティ：弾丸　スコア：#speed-decimal　#speed
#処理　hit-candidate指定
#戻り　エンティティ：hit-candidateタグ付き
execute unless score #speed vp.reg1 matches 0 positioned ^ ^ ^10 run tag @e[tag=!gun,tag=!gunner,distance=..10.2,tag=!entity-nohit] add hit-candidate
execute if score #speed vp.reg1 matches 1 positioned ^ ^ ^0.5 run function weapon:gun/hit/set-hit-candidate/set-hit-candidate-1
execute if score #speed vp.reg1 matches 2 positioned ^ ^ ^1 run function weapon:gun/hit/set-hit-candidate/set-hit-candidate-2
execute if score #speed vp.reg1 matches 3 positioned ^ ^ ^1.5 run function weapon:gun/hit/set-hit-candidate/set-hit-candidate-3
execute if score #speed vp.reg1 matches 4 positioned ^ ^ ^2 run function weapon:gun/hit/set-hit-candidate/set-hit-candidate-4
execute if score #speed vp.reg1 matches 5 positioned ^ ^ ^2.5 run function weapon:gun/hit/set-hit-candidate/set-hit-candidate-5
execute if score #speed vp.reg1 matches 6 positioned ^ ^ ^3 run function weapon:gun/hit/set-hit-candidate/set-hit-candidate-6
execute if score #speed vp.reg1 matches 7 positioned ^ ^ ^3.5 run function weapon:gun/hit/set-hit-candidate/set-hit-candidate-7
execute if score #speed vp.reg1 matches 8 positioned ^ ^ ^4 run function weapon:gun/hit/set-hit-candidate/set-hit-candidate-8
execute if score #speed vp.reg1 matches 9 positioned ^ ^ ^4.5 run function weapon:gun/hit/set-hit-candidate/set-hit-candidate-9
execute if score #speed vp.reg1 matches 10 positioned ^ ^ ^5 run function weapon:gun/hit/set-hit-candidate/set-hit-candidate-10
execute if score #speed vp.reg1 matches 11 positioned ^ ^ ^5.5 run function weapon:gun/hit/set-hit-candidate/set-hit-candidate-11
execute if score #speed vp.reg1 matches 12 positioned ^ ^ ^6 run function weapon:gun/hit/set-hit-candidate/set-hit-candidate-12
execute if score #speed vp.reg1 matches 13 positioned ^ ^ ^6.5 run function weapon:gun/hit/set-hit-candidate/set-hit-candidate-13
execute if score #speed vp.reg1 matches 14 positioned ^ ^ ^7 run function weapon:gun/hit/set-hit-candidate/set-hit-candidate-14
execute if score #speed vp.reg1 matches 15 positioned ^ ^ ^7.5 run function weapon:gun/hit/set-hit-candidate/set-hit-candidate-15
execute if score #speed vp.reg1 matches 16 positioned ^ ^ ^8 run function weapon:gun/hit/set-hit-candidate/set-hit-candidate-16
execute if score #speed vp.reg1 matches 17 positioned ^ ^ ^8.5 run function weapon:gun/hit/set-hit-candidate/set-hit-candidate-17
execute if score #speed vp.reg1 matches 18 positioned ^ ^ ^9 run function weapon:gun/hit/set-hit-candidate/set-hit-candidate-18
execute if score #speed vp.reg1 matches 19 positioned ^ ^ ^9.5 run function weapon:gun/hit/set-hit-candidate/set-hit-candidate-19
execute if score #speed vp.reg1 matches 20 positioned ^ ^ ^10 run function weapon:gun/hit/set-hit-candidate/set-hit-candidate-20

#0.5移動する場合別処理で0.5以内にタグ付け
execute if score #speed-decimal vp.reg1 matches 5 positioned ^ ^ ^-0.25 run function weapon:gun/hit/set-hit-candidate/set-hit-candidate-05
