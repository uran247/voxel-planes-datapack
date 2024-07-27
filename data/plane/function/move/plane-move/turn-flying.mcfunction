#> plane:move/plane-move/turn-flying
#
# 機体をangle-gapを打ち消すように旋回させる
#
# @input
#   executer @e[tag=plane-root,tag=!flying]
#
# @within function plane:move/plane-move
    #declare score_holder #current-angle #機体の現在のY軸角度
    #declare score_holder #max-turning #現在のY軸旋回角度

#> private
# @private
    #declare score_holder #yaw-gap #Y軸角度の目標角度と現在角度の差分
    #declare score_holder #pitch-gap #X軸角度の目標角度と現在角度の差分
    #declare score_holder #roll-speed #機体のロール速度

# angle-gap取得
scoreboard players operation #yaw-gap vp.reg1 = @s vp.yaw-gap
scoreboard players operation #pitch-gap vp.reg1 = @s vp.pitch-gap

# Y角度変化最大量決定
function plane:move/plane-move/flying/set-max-yaw
scoreboard players operation #max-yaw vp.reg1 = #max-yaw vp.return

#X角度変化最大量決定
function plane:move/plane-move/flying/set-max-pitch
scoreboard players operation #max-pitch vp.reg1 = #max-pitch vp.return

#tellraw @p [{"score" : {"name":"#max-yaw", "objective":"vp.reg1"}}, {"text":" "}, {"score" : {"name":"#max-pitch", "objective":"vp.reg1"}}]

# プレイヤーの向きに応じてAngXYZのスコア変更 失速してた場合は旋回をしない
# yaw
scoreboard players operation #angle-gap vp.input = #yaw-gap vp.reg1
scoreboard players operation #current-angle vp.input = @s vp.AngY
scoreboard players operation #max-turning vp.input = #max-yaw vp.reg1
function util:fill-angle-gap
scoreboard players operation @s vp.yaw-gap -= #angle-gap vp.return
scoreboard players operation @s[tag=!stall] vp.AngY += #angle-gap vp.return
# pitch
scoreboard players operation #angle-gap vp.input = #pitch-gap vp.reg1
scoreboard players operation #current-angle vp.input = @s vp.AngX
scoreboard players operation #max-turning vp.input = #max-pitch vp.reg1
function util:fill-angle-gap
scoreboard players operation @s vp.pitch-gap -= #angle-gap vp.return
scoreboard players operation @s[tag=!stall] vp.AngX += #angle-gap vp.return

# 旋回してるときはrollも変化(-9000..9000)
scoreboard players operation #roll-speed vp.reg1 = @s vp.roll-speed
execute if score #yaw-gap vp.reg1 matches -17800..-200 as @s[tag=!stall,tag=!destroyed,scores={vp.AngZ=-8999..}] run scoreboard players operation @s vp.AngZ -= #roll-speed vp.reg1
execute if score #yaw-gap vp.reg1 matches 300..17800 as @s[tag=!stall,tag=!destroyed,scores={vp.AngZ=..8999}] run scoreboard players operation @s vp.AngZ += #roll-speed vp.reg1
execute if score #yaw-gap vp.reg1 matches -17800..-200 as @s[tag=!stall,tag=!destroyed,scores={vp.AngZ=..-9000}] run scoreboard players set @s vp.AngZ -9000
execute if score #yaw-gap vp.reg1 matches 300..17800 as @s[tag=!stall,tag=!destroyed,scores={vp.AngZ=9000..}] run scoreboard players set @s vp.AngZ 9000

# 旋回していないときはrollをもとに戻す
execute if score #yaw-gap vp.reg1 matches -200..300 as @s[scores={vp.AngZ=1..18000}] at @s run scoreboard players operation @s vp.AngZ -= #roll-speed vp.reg1
execute if score #yaw-gap vp.reg1 matches -200..300 as @s[scores={vp.AngZ=-18000..-1}] at @s run scoreboard players operation @s vp.AngZ += #roll-speed vp.reg1

execute if score #yaw-gap vp.reg1 matches -200..300 as @s[scores={vp.AngZ=1..}] if score @s vp.AngZ < #roll-speed vp.reg1 at @s run scoreboard players set @s vp.AngZ 0
scoreboard players operation #roll-speed vp.reg1 *= #-1 vp.Num
execute if score #yaw-gap vp.reg1 matches -200..300 as @s[scores={vp.AngZ=..-1}] if score @s vp.AngZ > #roll-speed vp.reg1 at @s run scoreboard players set @s vp.AngZ 0

# AngYを適正値に補正
scoreboard players remove @s[scores={vp.AngY=18100..}] vp.AngY 36000
scoreboard players add @s[scores={vp.AngY=..-18100}] vp.AngY 36000
