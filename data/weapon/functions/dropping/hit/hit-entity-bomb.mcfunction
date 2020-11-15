#60kg爆弾の命中判定
#何ブロック先で命中するか判定、その値を#speedに入れる
#dropping/moveから呼び出される
#実行前提条件：#speedに移動距離の値が入ってる　単位：block/tick　スケール：1倍
#使えるタグ　bomb-move-executer：弾体  bomber:発射母体
#実行者：弾体

#候補にタグ付け　タグ付け範囲は#speedに応じて変化
execute if score #speed vp.reg1 matches 1 positioned ^ ^ ^0.5 run tag @e[tag=!bomber,distance=..0.5,tag=!entity-nohit,tag=!plane-rider] add hit-candidate
execute if score #speed vp.reg1 matches 2 positioned ^ ^ ^1 run tag @e[tag=!bomber,distance=..1,tag=!entity-nohit,tag=!plane-rider] add hit-candidate
execute if score #speed vp.reg1 matches 3 positioned ^ ^ ^1.5 run tag @e[tag=!bomber,distance=..1.5,tag=!entity-nohit,tag=!plane-rider] add hit-candidate
execute if score #speed vp.reg1 matches 4 positioned ^ ^ ^2 run tag @e[tag=!bomber,distance=..2,tag=!entity-nohit,tag=!plane-rider] add hit-candidate
execute if score #speed vp.reg1 matches 5 positioned ^ ^ ^2.5 run tag @e[tag=!bomber,distance=..2.5,tag=!entity-nohit,tag=!plane-rider] add hit-candidate
execute if score #speed vp.reg1 matches 6 positioned ^ ^ ^3 run tag @e[tag=!bomber,distance=..3,tag=!entity-nohit,tag=!plane-rider] add hit-candidate
execute if score #speed vp.reg1 matches 7 positioned ^ ^ ^3.5 run tag @e[tag=!bomber,distance=..3.5,tag=!entity-nohit,tag=!plane-rider] add hit-candidate
execute if score #speed vp.reg1 matches 8 positioned ^ ^ ^4 run tag @e[tag=!bomber,distance=..4,tag=!entity-nohit,tag=!plane-rider] add hit-candidate
execute if score #speed vp.reg1 matches 9 positioned ^ ^ ^4.5 run tag @e[tag=!bomber,distance=..4.5,tag=!entity-nohit,tag=!plane-rider] add hit-candidate
execute if score #speed vp.reg1 matches 10 positioned ^ ^ ^5 run tag @e[tag=!bomber,distance=..5,tag=!entity-nohit,tag=!plane-rider] add hit-candidate
execute if score #speed vp.reg1 matches 11 positioned ^ ^ ^5.5 run tag @e[tag=!bomber,distance=..5.5,tag=!entity-nohit,tag=!plane-rider] add hit-candidate
execute if score #speed vp.reg1 matches 12 positioned ^ ^ ^6 run tag @e[tag=!bomber,distance=..6,tag=!entity-nohit,tag=!plane-rider] add hit-candidate
execute if score #speed vp.reg1 matches 13 positioned ^ ^ ^6.5 run tag @e[tag=!bomber,distance=..6.5,tag=!entity-nohit,tag=!plane-rider] add hit-candidate
execute if score #speed vp.reg1 matches 14 positioned ^ ^ ^7 run tag @e[tag=!bomber,distance=..7,tag=!entity-nohit,tag=!plane-rider] add hit-candidate
execute if score #speed vp.reg1 matches 15 positioned ^ ^ ^7.5 run tag @e[tag=!bomber,distance=..7.5,tag=!entity-nohit,tag=!plane-rider] add hit-candidate
execute if score #speed vp.reg1 matches 16 positioned ^ ^ ^8 run tag @e[tag=!bomber,distance=..8,tag=!entity-nohit,tag=!plane-rider] add hit-candidate
execute if score #speed vp.reg1 matches 17 positioned ^ ^ ^8.5 run tag @e[tag=!bomber,distance=..8.5,tag=!entity-nohit,tag=!plane-rider] add hit-candidate
execute if score #speed vp.reg1 matches 18 positioned ^ ^ ^9 run tag @e[tag=!bomber,distance=..9,tag=!entity-nohit,tag=!plane-rider] add hit-candidate
execute if score #speed vp.reg1 matches 19 positioned ^ ^ ^9.5 run tag @e[tag=!bomber,distance=..9.5,tag=!entity-nohit,tag=!plane-rider] add hit-candidate
execute if score #speed vp.reg1 matches 20 positioned ^ ^ ^10 run tag @e[tag=!bomber,distance=..10,tag=!entity-nohit,tag=!plane-rider] add hit-candidate

#直線上にいないやつのタグを剥がす　幅1B
execute positioned ^ ^ ^10 as @e[tag=hit-candidate,distance=..10] at @e[tag=bomb-move-executer] positioned ^501 ^ ^10 run tag @s[distance=..500] remove hit-candidate
execute positioned ^ ^ ^10 as @e[tag=hit-candidate,distance=..10] at @e[tag=bomb-move-executer] positioned ^-501 ^ ^10 run tag @s[distance=..500] remove hit-candidate
execute positioned ^ ^ ^10 as @e[tag=hit-candidate,distance=..10] at @e[tag=bomb-move-executer] positioned ^ ^501 ^10 run tag @s[distance=..500] remove hit-candidate
execute positioned ^ ^ ^10 as @e[tag=hit-candidate,distance=..10] at @e[tag=bomb-move-executer] positioned ^ ^-501 ^10 run tag @s[distance=..500] remove hit-candidate
tag @e[tag=hit-candidate,limit=1,sort=nearest,distance=..20,tag=!bomber] add hit-bomb
execute positioned ^ ^ ^10 run tag @e[tag=hit-candidate,distance=..20] remove hit-candidate