#### 角度変化量決定 ####
#入力 entity:機体
#処理 機体をangle-gapを打ち消すように旋回させる

#radderがなかったら変化量は半分 撃墜されてたら変化量は0
function plane:move/plane-move/flying/set-max-yaw
scoreboard players operation #max-yaw vp.reg1 = #max-yaw vp.return

#### プレイヤーの向きに応じてAngXYZのスコア変更 ####
#yaw
scoreboard players operation #delta-angle vp.input = @s vp.yaw-gap
scoreboard players operation #base-angle vp.input = @s vp.AngY
scoreboard players operation #change-ammount vp.input = #max-yaw vp.reg1
function util:fill-angle-gap
scoreboard players operation @s vp.yaw-gap -= #delta-angle vp.return
scoreboard players operation @s vp.AngY += #delta-angle vp.return

#AngYを-18000 - 18000に補正
scoreboard players remove @s[scores={vp.AngY=18100..}] vp.AngY 36000
scoreboard players add @s[scores={vp.AngY=..-18100}] vp.AngY 36000

#ピッチ，ロールを着地時のものに固定
function plane:move/plane-move/rolling/correct-ang-xz
