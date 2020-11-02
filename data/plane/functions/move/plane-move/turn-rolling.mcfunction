#### 角度変化量決定 ####
#入力 entity:機体
#処理 機体をangle-gapを打ち消すように旋回させる

#radderがなかったら変化量は半分 撃墜されてたら変化量は0
function plane:move/plane-move/flying/set-max-yaw
scoreboard players operation #max-yaw reg1 = #max-yaw return

#### プレイヤーの向きに応じてAngXYZのスコア変更 ####
#yaw
scoreboard players operation #delta-angle input = @s yaw-gap
scoreboard players operation #base-angle input = @s AngY
scoreboard players operation #change-ammount input = #max-yaw reg1
function util:fill-angle-gap
scoreboard players operation @s yaw-gap -= #delta-angle return
scoreboard players operation @s AngY += #delta-angle return

#AngYを-18000 - 18000に補正
scoreboard players remove @s[scores={AngY=18100..}] AngY 36000
scoreboard players add @s[scores={AngY=..-18100}] AngY 36000

#ピッチ，ロールを着地時のものに固定
function plane:move/plane-move/rolling/correct-ang-xz
