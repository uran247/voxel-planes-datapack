#入力　エンティティ：弾丸　スコア：#speed vp.reg1(tick/m)　座標：弾丸　タグ：gunner,gun-move-executer
#処理　命中エンティティにhit-gunをつける
#戻り　hit-gunタグのついた命中対象

#直線上にいないやつのタグを剥がす　幅1.6B
execute positioned ^ ^ ^10 as @e[tag=hit-candidate,distance=..10] positioned ^1001.2 ^ ^10 run tag @s[distance=..1000] remove hit-candidate
execute positioned ^ ^ ^10 as @e[tag=hit-candidate,distance=..10] positioned ^-1001.2 ^ ^10 run tag @s[distance=..1000] remove hit-candidate
execute positioned ^ ^ ^10 as @e[tag=hit-candidate,distance=..10] positioned ^ ^1001.2 ^10 run tag @s[distance=..1000] remove hit-candidate
execute positioned ^ ^ ^10 as @e[tag=hit-candidate,distance=..10] positioned ^ ^-1001.2 ^10 run tag @s[distance=..1000] remove hit-candidate
tag @e[tag=hit-candidate,limit=1,sort=nearest,distance=..20,tag=!gunner] add hit-gun
execute positioned ^ ^ ^10 run tag @e[tag=hit-candidate,distance=..20] remove hit-candidate