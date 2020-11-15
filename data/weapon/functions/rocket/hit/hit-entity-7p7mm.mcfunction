#7.7mm機銃の命中判定
#なんブロック先で命中するか判定、その値をvp.reg1に入れる
#gun/moveから呼び出される
#実行前提条件：vp.reg1に移動距離の値が入ってる　単位：block/tick　スケール：1倍
#使えるタグ　gun-move-executer：弾体 gunner:発射母体
#実行者：弾体

#直線上にいないやつのタグを剥がす　幅1B
execute positioned ^ ^ ^10 as @e[tag=hit-candidate,distance=..20] positioned ^1001 ^ ^ run tag @s[distance=..1000] remove hit-candidate
execute positioned ^ ^ ^10 as @e[tag=hit-candidate,distance=..20] positioned ^-1001 ^ ^ run tag @s[distance=..1000] remove hit-candidate
execute positioned ^ ^ ^10 as @e[tag=hit-candidate,distance=..20] positioned ^ ^1001 ^ run tag @s[distance=..1000] remove hit-candidate
execute positioned ^ ^ ^10 as @e[tag=hit-candidate,distance=..20] positioned ^ ^-1001 ^ run tag @s[distance=..1000] remove hit-candidate
tag @e[tag=hit-candidate,limit=1,sort=nearest,distance=..20,tag=!gunner] add hit-gun
execute positioned ^ ^ ^10 run tag @e[tag=hit-candidate,distance=..20] remove hit-candidate