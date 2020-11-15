#機銃の命中判定
#入力　エンティティ：弾丸　スコア：#speed-decimal　#speed
#処理　命中処理 右のタグ持ちにはヒットしない：gun gunner entity-nohit
#戻り　スコア：#hit-flag タグ：hit-gun

#衝突判定フラグを0に
scoreboard players set #hit-flag vp.reg1 0

#ブロック衝突判定、衝突判定が出たら衝突判定フラグが1に
function weapon:gun/hit/hit-block

#hit候補判定
execute if score #speed-decimal vp.reg1 matches 0 run function weapon:gun/hit/set-hit-candidate
execute if score #speed-decimal vp.reg1 matches 5 positioned ^ ^ ^0.5 run function weapon:gun/hit/set-hit-candidate

#エンティティ衝突判定　衝突エンティティにhit-gunタグをつける
#execute at @s[tag=7p7mm] run function weapon:gun/hit/hit-entity-7p7mm
#execute at @s[tag=12p7mm] run function weapon:gun/hit/hit-entity-7p7mm
#execute at @s[tag=20mm] run function weapon:gun/hit/hit-entity-20mm
execute at @s run function weapon:gun/hit/hit-entity

#命中エンティティがいたらhitフラグに2を立てる
execute if entity @e[tag=hit-gun,distance=..20] run scoreboard players set #hit-flag vp.reg1 2
