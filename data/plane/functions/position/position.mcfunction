#入力：entity plane-root
#処理：飛行機の位置修正

#自分と同じIDを判定しタグ付け
tag @s add plane-position-executer

#角度スコアが前tickから変化したか判定しタグ付け
execute if score @s AngX-old = @s AngX if score @s AngY-old = @s AngY if score @s AngZ-old = @s AngZ run tag @s add angle-not-changed
tag @s[tag=!angle-not-changed] add need-calc-offset

#自分と同じIDのパーツを自分の位置へ
execute as @s at @s run tp @e[tag=target-parts] ^ ^ ^ ~90 ~

#ヘルスチェック
execute as @s at @s run function plane:position/util/parts-health

#移動力補正スコア収集
execute as @s at @s run function plane:position/util/get-corret-param

#航空機ごとの個別処理
execute as @s[tag=d3a-root] run function plane-data:d3a/d3a-position
execute as @s[tag=ki21-root] run function plane-data:ki-21/ki-21-position
execute as @s[tag=ki43-root] run function plane-data:ki-43/ki-43-position
execute as @s[tag=a5m-root] run function plane-data:a5m/a5m-position
execute as @s[tag=a6m2-root] run function plane-data:a6m2/a6m2-position
execute as @s[tag=ki44-root] run function plane-data:ki-44/ki-44-position
execute as @s[tag=d4y2-root] run function plane-data:d4y2/d4y2-position
execute as @s[tag=j2m3-root] run function plane-data:j2m3/j2m3-position
execute as @s[tag=g4m1-root] run function plane-data:g4m1/g4m1-position
execute as @s[tag=ki61-root] run function plane-data:ki-61/ki-61-position
execute as @s[tag=n1k2-root] run function plane-data:n1k2/n1k2-position
execute as @s[tag=a6m5-root] run function plane-data:a6m5/a6m5-position
execute as @s[tag=ki49-root] run function plane-data:ki-49/ki-49-position
#execute as @s[tag=spitfire-root] run function plane:position/spitfire-position
#execute as @s[tag=ju87-root] run function plane:position/ju87-position
#execute as @s[tag=f4u-root] run function plane:position/f4u-position
execute as @s[tag=j100b-root] run function plane:position/j-100b-position

#パーツをオフセット位置へ
#execute at @s run scoreboard players operation @e[tag=has-offset,tag=target-parts,distance=..30] input1 = @s AngZ
execute at @s[tag=need-calc-offset] run function plane:position/util/calc-triangle-ratio
scoreboard players operation #sin reg1 = #sin return
scoreboard players operation #cos reg1 = #cos return
scoreboard players operation @s[tag=need-calc-offset] sin = #sin return
scoreboard players operation @s[tag=need-calc-offset] cos = #cos return
execute at @s[tag=need-calc-offset] as @e[tag=has-offset,tag=target-parts,distance=..30] run function plane:position/util/calc-displacement
execute at @s[tag=need-calc-offset] as @e[tag=has-offset,tag=target-parts,distance=..30] at @s rotated ~-90 ~ run function plane:position/calc-offset
execute at @s as @e[tag=has-offset,tag=target-parts,distance=..30] at @s run function plane:position/util/move-parts
tag @s remove need-calc-offset

#角度スコアが変化していた場合ベクトル計算
execute if entity @s[tag=!angle-not-changed] run function math:vector

#角度補正
execute at @s[tag=!angle-not-changed] run function plane:position/util/modify-angle

#seatの位置表示
execute if entity @s[tag=!has-rider,tag=!no-move] at @e[tag=target-parts,tag=plane-seat,tag=!no-particle,type=minecraft:armor_stand] run particle minecraft:happy_villager ~ ~2.8 ~ 0.1 0.1 0.1 1 1 force @a[tag=!plane-rider]

#Ang-oldに現在のAng代入
scoreboard players operation @s AngX-old = @s AngX
scoreboard players operation @s AngY-old = @s AngY
scoreboard players operation @s AngZ-old = @s AngZ

#処理済みタグ付与
tag @e[tag=target-parts] add position-processed

#タグ削除
tag @s remove plane-position-executer
execute if entity @s[tag=angle-not-changed] run tag @s remove angle-not-changed
#tag @e[tag=target-parts] remove target-parts
