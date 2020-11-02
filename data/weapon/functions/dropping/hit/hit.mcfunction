#爆弾の命中判

#dropping/moveから呼び出される

#何ブロック先で命中するか判定、その値を#speedに入れる
#エンティティに命中するか判定　命中エンティティにhit-bombをつける
#何かに当たった場合#hit-flagが1になる

#実行前提条件：#speedに移動距離の値が入ってる　単位：block/tick　スケール：1倍
#使えるタグ　bomb-move-executer：弾体  bomber:発射母体
#実行者：弾体

#衝突判定フラグを0に
scoreboard players set #hit-flag reg1 0

#ブロック衝突判定、衝突判定が出たら衝突判定#hit-flagのフラグが1に
function weapon:dropping/hit/hit-block

#エンティティ衝突判定
#重量に応じて衝突判定幅が変わる
execute at @s[tag=bomb-normal] run function weapon:dropping/hit/hit-entity-bomb

#命中エンティティがいたら#hit-flagのフラグを立てる
execute if entity @e[tag=hit-bomb,distance=..20] run scoreboard players set #hit-flag reg1 2
