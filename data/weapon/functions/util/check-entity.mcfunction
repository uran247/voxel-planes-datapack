#入力 entity:@e 0-0-0-0-4
#処理：0-0-0-0-4と実行者の間にエンティティがいるかチェック
#　　　実効最大半径25block、25block先でのチェック幅20b
#　　　半径512の円で切り取り、25block先での精度：0.1block/幅10block
#返り値：エンティティにhit-on-line付与

#実効者と目印にタグ付け
tag @s add check-executer


#実効者-0-0-0-0-4の直線上にいるエンティティにタグ付け
tp 0-0-0-0-b @s

execute positioned ^ ^ ^12.5 as @e[tag=!check-executer,distance=..13] positioned as @s positioned ^ ^ ^1000 facing entity 0-0-0-0-b feet positioned ^ ^ ^1000 positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=1,dz=1,dy=1] run tag @s add hit-on-line

#実効者と目印にタグ削除
tag @s remove check-executer
#tag 0-0-0-0-4 remove check-executer
tp 0-0-0-0-b 0.5 2 0.5
#tag @e[tag=hit-candidate,distance=..30] remove hit-candidate

