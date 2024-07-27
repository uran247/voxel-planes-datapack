#> weapon:missile/search-target
#
# @input
#   as @e[tag=missile-moving]
#   at @e[tag=missile-moving]
#
# @output
#   entity @e[tag=ir-missile-target]
#
# @within function weapon:missile/ir-missile-manager

#> prv
# @private
    #declare tag target-candidate #ミサイルターゲット候補
    #declare tag dummy-sun #ミサイルターゲット候補
    #declare tag search-executer #実行者

# 実行者セット
tag @s add search-executer

# ダミーセット
tp 0-0-0-0-4 ~ ~ ~ ~ ~

    #say target-candidate0
#候補エンティティにタグ付け
#execute positioned ^ ^ ^128 as @e[tag=plane-hitbox,distance=..127.9] run tag @s add target-candidate
execute as @e[tag=plane-hitbox,distance=..256] run tag @s add target-candidate
   #execute if entity @e[tag=target-candidate,tag=!dummy-sun] run say target-candidate1

# 機種から±30度範囲にエンティティがいるか
#execute positioned ^ ^ ^128 as @e[tag=target-candidate,distance=..128] positioned ^ ^ ^-128 rotated ~-30 ~ positioned ^-1000.1 ^ ^ unless entity @s[distance=..1000] run tag @s remove target-candidate
#execute positioned ^ ^ ^128 as @e[tag=target-candidate,distance=..128] positioned ^ ^ ^-128 rotated ~30 ~ positioned ^1000.1 ^ ^ unless entity @s[distance=..1000] run tag @s remove target-candidate
#execute positioned ^ ^ ^128 as @e[tag=target-candidate,distance=..128] positioned ^ ^ ^-128 rotated ~ ~30 positioned ^ ^1000.1 ^ unless entity @s[distance=..1000] run tag @s remove target-candidate
#execute positioned ^ ^ ^128 as @e[tag=target-candidate,distance=..128] positioned ^ ^ ^-128 rotated ~ ~-30 positioned ^ ^-1000.1 ^ unless entity @s[distance=..1000] run tag @s remove target-candidate
$execute as @e[tag=target-candidate,distance=..256] positioned as @s facing entity 0-0-0-0-4 feet positioned ^ ^ ^1000 rotated as 0-0-0-0-4 positioned ^ ^ ^1000 unless entity @s[distance=..$(sight)] run tag @s remove target-candidate
    #execute if entity 0-0-0-0-4 run say 00004
    #execute if entity @e[tag=target-candidate,tag=!dummy-sun] run say target-candidate2
    #execute if entity @e[tag=target-candidate,tag=dummy-sun] run say sun
    #execute if entity @e[tag=target-candidate,tag=dummy-sun] run tellraw @p [{"nbt":"Rotation","entity":"@e[tag=dummy-sun,limit=1]"}]
    #execute if entity @e[tag=target-candidate,tag=dummy-sun] run tellraw @p [{"nbt":"Rotation","entity":"@s"}]
    #$say $(sight)

# エンティティの向きが機体に対して探知可能角度以内か判定
$execute as @e[tag=target-candidate,tag=!dummy-sun,distance=..256] positioned as @s positioned ^ ^ ^1000 rotated as @s positioned ^ ^ ^-1000 unless entity @s[distance=..$(angle)] run tag @s remove target-candidate
    #execute if entity @e[tag=target-candidate,tag=!dummy-sun] run say target-candidate3
    #$say $(angle)

#最も近い候補or太陽にタグ付け
execute unless entity @e[tag=target-candidate,tag=dummy-sun,distance=..256,sort=nearest,limit=1] run tag @e[tag=target-candidate,distance=..256,sort=nearest,limit=1] add ir-missile-target
execute if entity @e[tag=target-candidate,tag=dummy-sun,distance=..256,sort=nearest,limit=1] run tag @e[tag=target-candidate,tag=dummy-sun,distance=..256,sort=nearest,limit=1] add ir-missile-target
#tag @e[tag=target-candidate,tag=!dummy-sun,distance=..256,sort=nearest,limit=1] add ir-missile-target
    #execute if entity @e[tag=target-candidate,tag=dummy-sun,sort=nearest,limit=1] run say ir-missile-target1
    #execute if entity @e[tag=target-candidate,tag=!dummy-sun,sort=nearest,limit=1] run say ir-missile-target2

#リセット
execute positioned ^ ^ ^128 as @e[tag=target-candidate,distance=..128] run tag @s remove target-candidate
tp 0-0-0-0-4 0.0 1.0 0.0
tag @s remove search-executer
