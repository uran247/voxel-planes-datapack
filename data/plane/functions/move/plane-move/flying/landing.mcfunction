#機体の着陸処理を実行
#controll/flying経由で実行　実行者は機体
#入力　enthity:@e[tag=plane-root]

#NoGravity削除
data merge entity @s {NoGravity:0b}

#失速状態を解除
tag @s remove stall

#sound管理スコアを0に
scoreboard players set @s sound 0

#AngX,Zを初期値にする
scoreboard players set @s vp.AngZ 0
scoreboard players operation @s vp.AngX = @s vp.landing-pitch

#flyingタグ削除
tag @s remove flying
