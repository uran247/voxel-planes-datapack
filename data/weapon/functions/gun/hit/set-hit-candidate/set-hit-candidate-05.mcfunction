#入力　rotation position
#処理　半径√(0.25^2+0.5^2)の範囲内のエンティティにタグ付け　^z方向0.5ブロック以遠のタグを剥がす
#戻り　
tag @e[tag=!gun,tag=!gunner,distance=..2.012,tag=!entity-nohit,tag=!plane-rider] add hit-candidate05
execute as @e[tag=hit-candidate,distance=..2.012] positioned ^ ^ ^1000.25 run tag @s[distance=..1000] remove hit-candidate05
execute as @e[tag=hit-candidate,distance=..2.012] positioned ^ ^ ^-1000.25 run tag @s[distance=..1000] remove hit-candidate05
tag @e[tag=hit-candidate05,distance=..2.012] add hit-candidate
tag @e[tag=hit-candidate05,distance=..2.012] remove hit-candidate05
