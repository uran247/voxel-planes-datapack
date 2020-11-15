#爆弾の落下処理
#実行者：爆弾

#実行者にタグ付け
tag @s add torpedo-move-executer

#自分と同じID持ちのエンティティにタグ付け
scoreboard players operation #plane-id vp.reg1 = @s vp.plane-id
execute as @e[distance=..20] if score @s vp.plane-id = #plane-id vp.reg1 run tag @s add torpedoer

#移動と判定のため一時的に向きを90度回転
execute at @s run tp @s ~ ~ ~ ~-90 ~

#### 水中にいるか判定し航行モードにチェンジ ####
execute at @s if block ~ ~2 ~ minecraft:water if block ~ ~ ~ minecraft:water run function weapon:torpedo/mode/mode-change

#### 移動&ヒット判定 ####
#小数点以下の移動量決定
scoreboard players operation #speed-decimal vp.reg1 = @s vp.speed
scoreboard players operation #speed-decimal vp.reg1 %= #10 vp.Num
#整数部の移動量決定
scoreboard players operation #speed vp.reg1 = @s vp.speed
scoreboard players operation #speed vp.reg1 /= #10 vp.Num
#hitしたか確認
execute at @s run function weapon:torpedo/hit/hit-manager
#移動　エンティティ命中無の場合
execute unless score #hit-flag vp.reg1 matches 2 at @s run function weapon:torpedo/move/move-manager
#命中したエンティティ位置に移動　エンティティ命中有の場合
execute at @s positioned as @e[tag=hit-torpedo,distance=..20,limit=1,sort=nearest] run tp @s ~ ~ ~

#### ダメージ処理 ####
#ダメージを与える
execute if score #hit-flag vp.reg1 matches 1.. at @s run function weapon:torpedo/damage/damage

#### 落下時の方向転換処理 ####
#向き修正
function weapon:torpedo/move/change-angle
#speedを上げる
function weapon:torpedo/move/change-speed

#age更新
scoreboard players remove @s vp.age 1

#終了処理
tag @e[tag=hit-torpedo,distance=..20] remove hit-torpedo
tag @e[tag=torpedoer,distance=..40] remove torpedoer
tag @s remove torpedo-move-executer
kill @s[scores={vp.age=0}]
execute if score #hit-flag vp.reg1 matches 1.. run kill @s