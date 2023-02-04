#> plane:weapon/util/ir-search-target
#
# IRミサイルの攻撃対象をロックオンする
#
# @input
#   executer @e[tag=plane-root]
#   position at @e[tag=plane-root]
#
# @output
#   score @s vp.lockon-time #ロックオン実行時間
#   storage voxel-planes:return target-uuid #ターゲットのUUID
#
# @within
#   function plane:weapon/util/ir-lock-on
#

#> private
#   @private
    #declare score_holder #gtime #ゲーム内の時間[s]
    #declare score_holder #lockon-time #ロックオン時間
    #declare tag target-candidate #ミサイルロックオン候補
    #declare tag dummy-sun #ダミー太陽

#太陽の方向にダミー召喚
function plane:weapon/util/set-sun-dummy

#範囲内にロックオン可能mobがいるか確認
# 機種から±20度範囲にエンティティがいるか
execute positioned ^ ^ ^128 as @e[type=armor_stand,tag=plane-root,distance=1..128] run tag @s add target-candidate
execute positioned ^ ^ ^128 as @e[tag=target-candidate,distance=..128] positioned ^ ^ ^-128 rotated ~-30 ~ positioned ^-1000.1 ^ ^ unless entity @s[distance=..1000] run tag @s remove target-candidate
execute positioned ^ ^ ^128 as @e[tag=target-candidate,distance=..128] positioned ^ ^ ^-128 rotated ~30 ~ positioned ^1000.1 ^ ^ unless entity @s[distance=..1000] run tag @s remove target-candidate
execute positioned ^ ^ ^128 as @e[tag=target-candidate,distance=..128] positioned ^ ^ ^-128 rotated ~ ~30 positioned ^ ^1000.1 ^ unless entity @s[distance=..1000] run tag @s remove target-candidate
execute positioned ^ ^ ^128 as @e[tag=target-candidate,distance=..128] positioned ^ ^ ^-128 rotated ~ ~-30 positioned ^ ^-1000.1 ^ unless entity @s[distance=..1000] run tag @s remove target-candidate
# エンティティの向きが機体に対して±30度以内か判定
execute positioned ^ ^ ^128 as @e[tag=target-candidate,tag=!dummy-sun,distance=..128] positioned as @s positioned ^ ^ ^1000 rotated as @s positioned ^ ^ ^-1000 unless entity @s[distance=..518] run tag @s remove target-candidate

#ロックオン可能mobがいるならvp.lockon-timeを+1、いないならreset
execute positioned ^ ^ ^128 if entity @e[tag=target-candidate,distance=..128] run scoreboard players add @s vp.lockon-time 1
execute positioned ^ ^ ^128 unless entity @e[tag=target-candidate,distance=..128] run scoreboard players reset @s vp.lockon-time

#未ロックオン中の音とパーティクル
execute unless score @s vp.lockon-time matches 5.. run playsound minecraft:block.note_block.bit player @p[tag=plane-rider] ~ ~ ~ 3 1.334840 1

#ロックオン後の音とパーティクル
execute if score @s vp.lockon-time matches 5.. run playsound minecraft:block.note_block.bell player @p[tag=plane-rider] ~ ~ ~ 3 1.334840 1

#返り値
scoreboard players reset #target-uuid vp.return
data remove storage voxel-planes:return return
execute if score @s vp.lockon-time matches 5.. as @e[tag=target-candidate,distance=..128,sort=nearest,limit=1] store result score #target-uuid vp.return run data get entity @s UUID[0]
execute if score @s vp.lockon-time matches 5.. as @e[tag=target-candidate,distance=..128,sort=nearest,limit=1] run data modify storage voxel-planes:return return.target-uuid set from entity @s UUID

#reset
execute positioned ^ ^ ^128 as @e[tag=target-candidate,distance=..128] run tag @s remove target-candidate
tp @e[tag=dummy-sun,limit=1] 0.0 0.0 0.0
