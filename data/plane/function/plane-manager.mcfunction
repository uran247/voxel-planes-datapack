#> plane:plane-manager
#
# 現在のパラメーターから以下の処理をする
#   本来いるべき位置へ飛行機を移動
#   飛行機の表示を適正にする
#   現在の選択装備を変更する
#   武器を発射する
#
# @input
#   executer @e[tag=plane-root]
#
# @within plane:tick
    #declare tag target-parts #操作対象飛行機のパーツであることを示す
    #declare tag plane-pilot #飛行機の操縦者であることを示す
#

#> private
# @private
    #declare tag check-plane-equip #装備変更処理を実行すべきであることを示す
    #
    #declare score_holder #plane-id #実行者のplane-idを示す

# パーツにタグ付け
scoreboard players operation #plane-id vp.reg1 = @s vp.plane-id
execute at @s as @e[tag=plane,tag=!plane-root] if score @s vp.plane-id = #plane-id vp.reg1 run tag @s add target-parts

# 飛行機に搭乗者がいることをタグ付け
execute at @s as @a[tag=plane-rider] if score #plane-id vp.reg1 = @s vp.plane-id run tag @s add plane-pilot
execute if entity @p[tag=plane-pilot] run tag @s add has-rider

# ohmydat呼び出し
execute as @s run function oh_my_dat:please

# AI飛行機用function
execute if entity @s[tag=has-dummy-rider,tag=has-ai] run function plane:controll/ai

# 移動
execute as @s[tag=!no-move] at @s run function plane:move/plane-move

# 飛行機の見た目をあるべき状態に補正
execute as @s at @s run function plane:position/position

# 武器使用
execute at @s run function plane:weapon/weapon-manager

# 駐機時の装備変更
execute if entity @a[tag=plane-pilot,tag=change-inventory] at @s[tag=!engine-started,scores={vp.speed=..0}] run function plane:equip/equip-manager with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].plane-data
tag @a[tag=plane-pilot,tag=change-inventory] remove change-inventory

# 選択装備変更
execute as @s[tag=need-change-weapon] run function plane:weapon/change-current-weapon

# 情報表示
execute at @p[tag=plane-rider] as @s[tag=has-rider] run function plane:plane-info

# タグ削除
tag @e[tag=target-parts] remove target-parts
tag @s remove has-rider
tag @p[tag=plane-pilot] remove plane-pilot
