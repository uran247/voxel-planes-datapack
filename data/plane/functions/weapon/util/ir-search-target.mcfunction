#> plane:weapon/util/ir-search-target
#
# IRミサイルの攻撃対象をロックオンする
#
# @input
#   executer @e[tag=plane-root]
#   position at @e[tag=plane-root]
#
# @output
#   score #target-uuid vp.return #ターゲットのUUID[0]
#   storage voxel-planes:return target-uuid #ターゲットのUUID
#
# @within
#   function plane:weapon/util/ir-lock-on
#
# 利用可能タグ controll-target:機体

#> private
#   @private
    #declare score_holder #gtime #ゲーム内の時間[s]
    #declare score_holder #lockon-time #ロックオン時間
    #declare tag target-candidate #ミサイルロックオン候補

#範囲内にロックオン可能mobがいるか確認
# 機種から±20度範囲にエンティティがいるか
execute positioned ^ ^ ^64 as @e[type=armor_stand,tag=plane-root,distance=1..64] run tag @s add target-candidate
execute positioned ^ ^ ^64 as @e[tag=target-candidate,distance=..64] positioned ^ ^ ^-64 rotated ~-20 ~ positioned ^-1000.1 ^ ^ unless entity @s[distance=..1000] run tag @s remove target-candidate
execute positioned ^ ^ ^64 as @e[tag=target-candidate,distance=..64] positioned ^ ^ ^-64 rotated ~20 ~ positioned ^1000.1 ^ ^ unless entity @s[distance=..1000] run tag @s remove target-candidate
execute positioned ^ ^ ^64 as @e[tag=target-candidate,distance=..64] positioned ^ ^ ^-64 rotated ~ ~20 positioned ^ ^1000.1 ^ unless entity @s[distance=..1000] run tag @s remove target-candidate
execute positioned ^ ^ ^64 as @e[tag=target-candidate,distance=..64] positioned ^ ^ ^-64 rotated ~ ~-20 positioned ^ ^-1000.1 ^ unless entity @s[distance=..1000] run tag @s remove target-candidate
# エンティティの向きが機体に対して±30度以内か判定
execute positioned ^ ^ ^64 as @e[tag=target-candidate,distance=..64] positioned as @s positioned ^ ^ ^1000 rotated as @s positioned ^ ^ ^-1000 unless entity @s[distance=..518] run tag @s remove target-candidate

#ロックオン可能mobがいるならvp.lockon-timeを+1、いないならreset
execute store result score #lockon-time vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.lockon-time
execute positioned ^ ^ ^64 if entity @e[tag=target-candidate,distance=..64] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.lockon-time int 1 run scoreboard players add #lockon-time vp.reg1 1
execute positioned ^ ^ ^64 unless entity @e[tag=target-candidate,distance=..64] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.lockon-time int 1 run scoreboard players set #lockon-time vp.reg1 0

#未ロックオン中の音とパーティクル
execute unless score #lockon-time vp.reg1 matches 5.. run playsound minecraft:block.note_block.bit player @p[tag=plane-rider] ~ ~ ~ 1 1.334840 0

#ロックオン後の音とパーティクル
execute if score #lockon-time vp.reg1 matches 5.. run playsound minecraft:block.note_block.bell player @p[tag=plane-rider] ~ ~ ~ 1 1.334840 0

#返り値
scoreboard players reset #target-uuid vp.return
data remove storage voxel-planes:return return
execute if score #lockon-time vp.reg1 matches 5.. as @e[tag=target-candidate,distance=..64,sort=nearest,limit=1] store result score #target-uuid vp.return run data get entity @s UUID[0]
execute if score #lockon-time vp.reg1 matches 5.. as @e[tag=target-candidate,distance=..64,sort=nearest,limit=1] run data modify storage voxel-planes:return return.target-uuid set from entity @s UUID

#reset
execute positioned ^ ^ ^64 as @e[tag=target-candidate,distance=..64] run tag @s remove target-candidate