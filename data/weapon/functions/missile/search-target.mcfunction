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
    #declare tag dummy-sun #ミサイルターゲット候補

    #say target-candidate0
#候補エンティティにタグ付け
execute positioned ^ ^ ^128 as @e[type=armor_stand,tag=plane-hitbox,distance=..127.9] run tag @s add target-candidate
    #execute if entity @e[tag=target-candidate,tag=!dummy-sun] run say target-candidate1
# 機種から±30度範囲にエンティティがいるか
execute positioned ^ ^ ^128 as @e[tag=target-candidate,distance=..128] positioned ^ ^ ^-128 rotated ~-30 ~ positioned ^-1000.1 ^ ^ unless entity @s[distance=..1000] run tag @s remove target-candidate
execute positioned ^ ^ ^128 as @e[tag=target-candidate,distance=..128] positioned ^ ^ ^-128 rotated ~30 ~ positioned ^1000.1 ^ ^ unless entity @s[distance=..1000] run tag @s remove target-candidate
execute positioned ^ ^ ^128 as @e[tag=target-candidate,distance=..128] positioned ^ ^ ^-128 rotated ~ ~30 positioned ^ ^1000.1 ^ unless entity @s[distance=..1000] run tag @s remove target-candidate
execute positioned ^ ^ ^128 as @e[tag=target-candidate,distance=..128] positioned ^ ^ ^-128 rotated ~ ~-30 positioned ^ ^-1000.1 ^ unless entity @s[distance=..1000] run tag @s remove target-candidate
    #execute if entity @e[tag=target-candidate,tag=!dummy-sun] run say target-candidate2
# エンティティの向きが機体に対して±30度以内か判定
execute positioned ^ ^ ^128 as @e[tag=target-candidate,tag=!dummy-sun,distance=..128] positioned as @s positioned ^ ^ ^1000 rotated as @s positioned ^ ^ ^-1000 unless entity @s[distance=..518] run tag @s remove target-candidate
    #execute if entity @e[tag=target-candidate,tag=!dummy-sun] run say target-candidate3

#最も近い候補or太陽にタグ付け
execute unless entity @e[tag=target-candidate,tag=dummy-sun,distance=..256,sort=nearest,limit=1] run tag @e[tag=target-candidate,distance=..256,sort=nearest,limit=1] add ir-missile-target
execute if entity @e[tag=target-candidate,tag=dummy-sun,distance=..256,sort=nearest,limit=1] run tag @e[tag=target-candidate,tag=dummy-sun,distance=..256,sort=nearest,limit=1] add ir-missile-target
    #execute if entity @e[tag=ir-missile-target] run say ir-missile-target1
    #execute if entity @e[tag=target-candidate,tag=!dummy-sun,sort=nearest,limit=1] run say ir-missile-target2
#リセット
execute positioned ^ ^ ^128 as @e[tag=target-candidate,distance=..128] run tag @s remove target-candidate