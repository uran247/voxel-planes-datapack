#### 角度変化量決定 ####
#入力 entity:機体
#処理 機体をangle-gapを打ち消すように旋回させる

#angle-gap取得
scoreboard players operation #yaw-gap reg1 = @s yaw-gap
scoreboard players operation #pitch-gap reg1 = @s pitch-gap

#Y角度変化最大量決定
#radderがなかったら変化量は半分 撃墜されてたら変化量は0
function plane:move/plane-move/flying/set-max-yaw
scoreboard players operation #max-yaw reg1 = #max-yaw return

#X角度変化最大量決定
#elevetorの数を数えて、1以下なら変化量は半分 撃墜されてたら変化量は0
function plane:move/plane-move/flying/set-max-pitch
scoreboard players operation #max-pitch reg1 = #max-pitch return

#tellraw @p [{"score" : {"name":"#max-yaw", "objective":"reg1"}}, {"text":" "}, {"score" : {"name":"#max-pitch", "objective":"reg1"}}]

#### プレイヤーの向きに応じてAngXYZのスコア変更 失速してた場合は旋回をしない ####
#yaw
scoreboard players operation #delta-angle input = #yaw-gap reg1
scoreboard players operation #base-angle input = @s AngY
scoreboard players operation #change-ammount input = #max-yaw reg1
function util:fill-angle-gap
scoreboard players operation @s yaw-gap -= #delta-angle return
scoreboard players operation @s[tag=!stall] AngY += #delta-angle return
#pitch
scoreboard players operation #delta-angle input = #pitch-gap reg1
scoreboard players operation #base-angle input = @s AngX
scoreboard players operation #change-ammount input = #max-pitch reg1
function util:fill-angle-gap
scoreboard players operation @s pitch-gap -= #delta-angle return
scoreboard players operation @s[tag=!stall] AngX += #delta-angle return

#yawが変化してたらrollも変化(-9000..9000)
scoreboard players operation #roll-speed reg1 = @s roll-speed
execute if score #yaw-gap reg1 matches -17800..-200 as @s[scores={AngZ=-8999..},tag=!stall,tag=!destroyed] run scoreboard players operation @s AngZ -= #roll-speed reg1
execute if score #yaw-gap reg1 matches 300..17800 as @s[scores={AngZ=..8999},tag=!stall,tag=!destroyed] run scoreboard players operation @s AngZ += #roll-speed reg1
execute if score #yaw-gap reg1 matches -17800..-200 as @s[scores={AngZ=..-9000},tag=!stall,tag=!destroyed] run scoreboard players set @s AngZ -9000
execute if score #yaw-gap reg1 matches 300..17800 as @s[scores={AngZ=9000..},tag=!stall,tag=!destroyed] run scoreboard players set @s AngZ 9000

#rollをもとに戻す
execute if score #yaw-gap reg1 matches -200..300 as @s[scores={AngZ=1..18000}] at @s run scoreboard players operation @s AngZ -= #roll-speed reg1
execute if score #yaw-gap reg1 matches -200..300 as @s[scores={AngZ=-18000..-1}] at @s run scoreboard players operation @s AngZ += #roll-speed reg1

execute if score #yaw-gap reg1 matches -200..300 as @s[scores={AngZ=1..}] if score @s AngZ < #roll-speed reg1 at @s run scoreboard players set @s AngZ 0
scoreboard players operation #roll-speed reg1 *= #-1 Num
execute if score #yaw-gap reg1 matches -200..300 as @s[scores={AngZ=..-1}] if score @s AngZ > #roll-speed reg1 at @s run scoreboard players set @s AngZ 0

#AngYを-18000 - 18000に補正
scoreboard players remove @s[scores={AngY=18100..}] AngY 36000
scoreboard players add @s[scores={AngY=..-18100}] AngY 36000
