#ソースとターゲットの角度差の取得
#in:スコア:#source-rot input(-36000 - 36000),#target-rot input(-36000 - 36000) エンティティ：tag=target-entity
#out:スコア：#defference return(-18000 - 18000)

#-18000 - 18000に補正
execute if score #source-rot input matches 18100.. run scoreboard players remove #source-rot input 36000
execute if score #source-rot input matches ..-18100 run scoreboard players add #source-rot input 36000
execute if score #target-rot input matches 18100.. run scoreboard players remove #target-rot input 36000
execute if score #target-rot input matches ..-18100 run scoreboard players add #target-rot input 36000

#calculation
scoreboard players operation #source-rot input -= #target-rot input

#-18000 - 18000に補正
execute if score #source-rot input matches 18100.. run scoreboard players remove #source-rot input 36000
execute if score #source-rot input matches ..-18100 run scoreboard players add #source-rot input 36000
scoreboard players operation #defference return = #source-rot input

