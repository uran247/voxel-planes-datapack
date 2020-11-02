#選択されるステージを決定
#入力　座標:4 141 17

#チェストにアイテムセット
execute positioned 4 141 17 run function game:select-stage/set-items

#ステージクリック検知
execute as @a[distance=..7] store result score @s reg1 run clear @a[distance=..7] #tags:stage-select{item-type:stage-select} 0
execute as @p[distance=..7,scores={reg1=1..}] run function game:select-stage/click-event
clear @a[distance=..7] #tags:stage-select{item-type:stage-select}
scoreboard players set #stage-click reg1 0