#> plane:weapon/util/ir-lock-on
#
# IRミサイルの攻撃対象をロックオンする
#
# @input
#   executer @e[tag=plane-root]
#   position at @e[tag=plane-root]
#
# @within
#   function plane:weapon/weapon-manager
#
# 利用可能タグ controll-target:機体

#> private
#   @private
    #declare score_holder #gtime #ゲーム内の時間[s]
    #declare tag target-candidate #ミサイルロックオン候補

#現在時刻取得
execute store result score #gtime vp.reg1 run time query gametime
scoreboard players operation #gtime vp.reg1 %= #10 vp.Num

#範囲内にロックオン可能mobがいるか確認
execute if score #gtime vp.reg1 matches 0 positioned ^ ^ ^64 as @e[type=armor_stand,tag=plane-root,distance=1..64] run tag @s add target-candidate
execute if score #gtime vp.reg1 matches 0 positioned ^ ^ ^64 as @e[tag=target-candidate,distance=..64] positioned ^ ^ ^-64 rotated ~-20 ~ positioned ^-1000.1 ^ ^ unless entity @s[distance=..1000] run tag @s remove target-candidate
execute if score #gtime vp.reg1 matches 0 positioned ^ ^ ^64 as @e[tag=target-candidate,distance=..64] positioned ^ ^ ^-64 rotated ~20 ~ positioned ^1000.1 ^ ^ unless entity @s[distance=..1000] run tag @s remove target-candidate

#ロックオン可能mobがいるならvp.lockon-timeを+1、いないならreset
execute if score #gtime vp.reg1 matches 0 positioned ^ ^ ^64 if entity @e[tag=target-candidate,distance=..64] run scoreboard players add @s vp.lockon-time 1
execute if score #gtime vp.reg1 matches 0 positioned ^ ^ ^64 unless entity @e[tag=target-candidate,distance=..64] run scoreboard players reset @s vp.lockon-time

#未ロックオン中の音とパーティクル
execute if score #gtime vp.reg1 matches 0 unless score @s vp.lockon-time matches 5.. run playsound minecraft:block.note_block.bit player @p[tag=plane-rider] ~ ~ ~ 1 1.334840 0

#ロックオン後の音とパーティクル
execute if score #gtime vp.reg1 matches 0 if score @s vp.lockon-time matches 5.. run playsound minecraft:block.note_block.bell player @p[tag=plane-rider] ~ ~ ~ 1 1.334840 0

#title表示
execute unless score @s vp.lockon-time matches 5.. run title @p[tag=plane-rider] subtitle [{"text": "locking on ..."}]
execute if score @s vp.lockon-time matches 5.. run title @p[tag=plane-rider] subtitle [{"text": "locked on","color": "yellow"}]
title @p[tag=plane-rider] times 0 1 22
title @p[tag=plane-rider] title [{"text": ""}]

#reset
execute if score #gtime vp.reg1 matches 0 positioned ^ ^ ^64 as @e[tag=target-candidate,distance=..64] run tag @s remove target-candidate