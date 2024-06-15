#> plane:position/position
#
# 飛行機のパーツ位置修正
# 爆弾が装備されていなかったら召喚
#
# @input
#   executer @e[tag=plane-root]
#   position @e[tag=plane-root]
#   oh_my_dat @e[tag=plane-root]
#
# @within function plane:plane-manager
#

#> tags
# @within
#   function plane:position/util/modify-angle
#   function plane:position/position
    #declare tag angle-not-changed #前tickから角度変化がなかったことを示す

#> private
# @private
    #declare tag plane-position-executer #実行者を示す
    #declare score_holder #packet #パケット送信用スコア

#> offset
# @within
#   function plane:position/position
#   function plane:position/util/calc-displacement
    #declare score_holder #model-offset-y #モデルのtranslationのy軸の大きさx1000
    #declare score_holder #central-axis-offset-y #モデルのZ回転軸とエンティティ位置のy軸のずれx1000

#入力：entity plane-root
#処理：飛行機の位置修正

# 実行者マーク
tag @s add plane-position-executer

# パーツ位置を再計算する必要があるかチェック
execute if score @s vp.AngX-old = @s vp.AngX if score @s vp.AngY-old = @s vp.AngY if score @s vp.AngZ-old = @s vp.AngZ run tag @s add angle-not-changed
tag @s[tag=!angle-not-changed] add need-calc-offset

# シートとクリック検知以外の自分と同じIDのパーツを自分の位置へ
execute at @s run tp @e[tag=target-parts,tag=!plane-seat,distance=..32] ~ ~ ~ ~ ~

# パーツのヘルスチェック
execute as @s at @s run function util:parts-health

# 体力表示更新(本来は表示処理でやるべきだがパーツが1座標に集まるタイミングここなので軽さのために実行)
execute at @s as @e[type=minecraft:donkey,tag=target-parts,tag=plane-seat,distance=..30] run function plane:position/util/renew-health-display

# 移動力補正スコア収集(本来は移動処理でやるべきだがパーツが1座標に集まるタイミングここなので軽さのために実行)
execute as @s at @s run function plane:position/util/get-corret-param

# 航空機ごとの個別処理
function plane:position/position-individual

# hitbox補充/削除
function plane:position/summon-controll-entity
function plane:position/delete-hitbox

# 武器召喚
function plane:position/summon-weapon

# パーツをオフセット位置へ
execute at @s[tag=need-calc-offset] run function plane:position/util/calc-triangle-ratio
scoreboard players operation #sin vp.reg1 = #sin vp.return
scoreboard players operation #cos vp.reg1 = #cos vp.return
scoreboard players operation @s[tag=need-calc-offset] vp.sin = #sin vp.return
scoreboard players operation @s[tag=need-calc-offset] vp.cos = #cos vp.return
execute if entity @s[tag=need-calc-offset] run scoreboard players operation #model-offset-y vp.input = @s vp.model-offset-y
execute if entity @s[tag=need-calc-offset] run scoreboard players operation #central-axis-offset-y vp.input = @s vp.central-axis-offset-y
execute at @s[tag=need-calc-offset] as @e[tag=has-offset,tag=target-parts,distance=..30] run function plane:position/util/calc-displacement
execute at @s as @e[type=!item_display,type=!block_display,tag=has-offset,tag=target-parts,distance=..30] at @s run function plane:position/move-to-offset
execute on passengers if entity @s[type=item_display,tag=has-offset] run function plane:position/util/set-translation
execute on passengers if entity @s[type=block_display,tag=has-offset] run function plane:position/util/set-translation
tag @s remove need-calc-offset

# afterburnerの見た目on/off
function plane:position/util/toggle-afterburner

# 角度スコアが変化していた場合ベクトル再計算
execute if entity @s[tag=!angle-not-changed] run function math:vector

# 角度をエンティティに反映
execute at @s[tag=!angle-not-changed] run function plane:position/util/modify-angle
#execute at @s[tag=angle-not-changed] run function plane:position/util/stable-display

# パケット強制送信で描画ズレを阻止
function plane:position/force-packet

# seatの位置表示
execute if entity @s[tag=!has-rider,tag=!no-move] at @e[type=armor_stand,tag=target-parts,tag=plane-seat,tag=!no-particle,distance=..20] run particle minecraft:happy_villager ~ ~2.8 ~ 0.1 0.1 0.1 1 1 force @a[tag=!plane-rider,distance=..8]

# 飛行機にriderがいない場合クリック検知のrideをはがす
execute if entity @s[tag=!has-rider,tag=!no-move] as @e[type=donkey,tag=target-parts,tag=plane-seat,distance=..32] on passengers run ride @s dismount

# 変化前angleの保持
scoreboard players operation @s vp.AngX-old = @s vp.AngX
scoreboard players operation @s vp.AngY-old = @s vp.AngY
scoreboard players operation @s vp.AngZ-old = @s vp.AngZ

# 処理済みのエンティティをマーク
tag @e[tag=target-parts,distance=..32] add position-processed

# マーク削除
tag @s remove plane-position-executer
execute if entity @s[tag=angle-not-changed] run tag @s remove angle-not-changed
