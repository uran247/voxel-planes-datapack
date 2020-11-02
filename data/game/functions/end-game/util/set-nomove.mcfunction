#入力　entity:plane-root
#処理　プレイヤーが乗っている飛行機にnomoveタグを付ける

#scoreboard players set #flag reg1 0
#scoreboard players operation #plane-id reg1 = @s plane-id
#execute as @a if score @s plane-id = #plane-id reg1 run scoreboard players set #flag reg1 1
#execute if score #flag reg1 matches 1 run tag @s add no-move
tag @s add no-move