#入力　entity:plane-root
#処理　プレイヤーが乗っている航空機を削除

#アイテム化
tp @s 6 141 20
function item:plane2item/plane2item

#ロビーへ移動
#tp @e[type=item,nbt={Item:{id:"minecraft:bat_spawn_egg"}}] 6 141 20