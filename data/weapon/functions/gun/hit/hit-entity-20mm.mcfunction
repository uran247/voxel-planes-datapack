#20mm機銃の命中判定
#なんブロック先で命中するか判定、ヒットしうるエンティティにタグをつける
#gun/moveから呼び出される
#実行前提条件：reg1に移動距離の値が入ってる　単位：block/tick　スケール：1倍
#使えるタグ　gun-move-executer：弾体  gunner:発射母体
#実行者：弾体

#直線上にいないやつのタグを剥がす　幅2B
execute positioned ^ ^ ^10 as @e[tag=hit-candidate,distance=..10] positioned ^1001.4 ^ ^10 run tag @s[distance=..1000] remove hit-candidate
execute positioned ^ ^ ^10 as @e[tag=hit-candidate,distance=..10] positioned ^-1001.4 ^ ^10 run tag @s[distance=..1000] remove hit-candidate
execute positioned ^ ^ ^10 as @e[tag=hit-candidate,distance=..10] positioned ^ ^1001.4 ^10 run tag @s[distance=..1000] remove hit-candidate
execute positioned ^ ^ ^10 as @e[tag=hit-candidate,distance=..10] positioned ^ ^-1001.4 ^10 run tag @s[distance=..1000] remove hit-candidate
tag @e[tag=hit-candidate,limit=1,sort=nearest,distance=..20,tag=!gunner] add hit-gun
execute positioned ^ ^ ^10 run tag @e[tag=hit-candidate,distance=..20] remove hit-candidate