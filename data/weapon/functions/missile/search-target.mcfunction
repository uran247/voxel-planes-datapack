#> weapon:missile/search-target
#
# @input
#   executer @e[tag=missile-moving]
#   at @s
#
# @output
#   entity @e[tag=ir-missile-target]
#
# @within function weapon:missile/ir-missile-manager

#> prv
# @private
    #declare tag target-candidate #ミサイルターゲット候補

#候補エンティティにタグ付け
execute positioned ^ ^ ^128 as @e[type=armor_stand,tag=plane-hitbox,distance=..127.9] run tag @s add target-candidate
# 機種から±30度範囲にエンティティがいるか
execute positioned ^ ^ ^128 as @e[tag=target-candidate,distance=..128] positioned ^ ^ ^-128 rotated ~-30 ~ positioned ^-1000.1 ^ ^ unless entity @s[distance=..1000] run tag @s remove target-candidate
execute positioned ^ ^ ^128 as @e[tag=target-candidate,distance=..128] positioned ^ ^ ^-128 rotated ~30 ~ positioned ^1000.1 ^ ^ unless entity @s[distance=..1000] run tag @s remove target-candidate
execute positioned ^ ^ ^128 as @e[tag=target-candidate,distance=..128] positioned ^ ^ ^-128 rotated ~ ~30 positioned ^ ^1000.1 ^ unless entity @s[distance=..1000] run tag @s remove target-candidate
execute positioned ^ ^ ^128 as @e[tag=target-candidate,distance=..128] positioned ^ ^ ^-128 rotated ~ ~-30 positioned ^ ^-1000.1 ^ unless entity @s[distance=..1000] run tag @s remove target-candidate
# エンティティの向きが機体に対して±30度以内か判定
execute positioned ^ ^ ^128 as @e[tag=target-candidate,distance=..128] positioned as @s positioned ^ ^ ^1000 rotated as @s rotated ~-90 ~ positioned ^ ^ ^-1000 unless entity @s[distance=..518] run tag @s remove target-candidate

#最も近い候補にタグ付け
tag @e[tag=target-candidate,distance=..256,sort=nearest,limit=1] add ir-missile-target

#リセット
execute positioned ^ ^ ^128 as @e[tag=target-candidate,distance=..128] run tag @s remove target-candidate