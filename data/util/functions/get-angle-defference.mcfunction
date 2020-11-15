#ソースとターゲットの角度差の取得
#in:スコア:#source-rot vp.input(-36000 - 36000),#target-rot vp.input(-36000 - 36000) エンティティ：tag=target-entity
#out:スコア：#defference vp.return(-18000 - 18000)

#-18000 - 18000に補正
execute if score #source-rot vp.input matches 18100.. run scoreboard players remove #source-rot vp.input 36000
execute if score #source-rot vp.input matches ..-18100 run scoreboard players add #source-rot vp.input 36000
execute if score #target-rot vp.input matches 18100.. run scoreboard players remove #target-rot vp.input 36000
execute if score #target-rot vp.input matches ..-18100 run scoreboard players add #target-rot vp.input 36000

#calculation
scoreboard players operation #source-rot vp.input -= #target-rot vp.input

#-18000 - 18000に補正
execute if score #source-rot vp.input matches 18100.. run scoreboard players remove #source-rot vp.input 36000
execute if score #source-rot vp.input matches ..-18100 run scoreboard players add #source-rot vp.input 36000
scoreboard players operation #defference vp.return = #source-rot vp.input

