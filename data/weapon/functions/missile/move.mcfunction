#> weapon:missile/move
#
# 
#
# @within function weapon:missile/ir-missile-manager

#ベクトル方向へエンティティの向きを向ける
    #tellraw @p [{"nbt":"Pos","entity":"@s"}]
data modify entity @s Pos set from storage minecraft:plane-datapack temporary.Pos
tp @e[tag=missile-move-executer,distance=..1,limit=1] ~ ~ ~ facing entity @s
    #tellraw @p [{"nbt":"Pos","entity":"@s"}]
    #tellraw @p [""] 
#ヒットフラグ初期化
scoreboard players set #hit-flag vp.reg1 0

#移動予定先までの間にブロックがあるか判定
function weapon:util/check-block
execute unless score #x vp.return matches 0 unless score #y vp.return matches 100 unless score #z vp.return matches 0 run scoreboard players set #hit-flag vp.reg1 1
execute if score #hit-flag vp.reg1 matches 1 run tag @s add hit-weapon
execute if score #hit-flag vp.reg1 matches 1 run data modify entity @s Pos set from storage voxel-planes:return return

#移動予定先までの間にエンティティがいるか判定
execute facing entity @s eyes run function weapon:util/check-entity-proximity
execute if entity @e[tag=hit-on-line,tag=!entity-nohit,distance=..20] run scoreboard players set #hit-flag vp.reg1 2

#移動予定先までの間のエンティティで命中可能なやつにタグ付け
execute if score #hit-flag vp.reg1 matches 2 as @e[tag=hit-on-line,tag=!entity-nohit,distance=..20] unless score @s vp.plane-id = #plane-id vp.reg1 run tag @s add hit-weapon
execute if score #hit-flag vp.reg1 matches 2 unless entity @e[tag=hit-weapon,distance=..20] run scoreboard players set #hit-flag vp.reg1 0

#命中していない場合移動予定先へ移動
execute if score #hit-flag vp.reg1 matches 0 run tp @e[tag=missile-move-executer,distance=..1,limit=1] @s

#ブロックに命中してた場合命中してたところに移動
execute if score #hit-flag vp.reg1 matches 1 run tp @e[tag=missile-move-executer,distance=..1,limit=1] @e[tag=hit-weapon,distance=..20,sort=nearest,limit=1]

#エンティティに命中してた場合進路上のエンティティの1番近くに移動
execute if score #hit-flag vp.reg1 matches 2 as @e[tag=missile-move-executer,distance=..1,limit=1] rotated as @s positioned as @e[tag=hit-weapon,distance=..26,sort=nearest,limit=1] positioned ^ ^ ^1000 facing entity @s feet positioned ^ ^ ^1000 run tp @s ~ ~ ~ ~ ~
    #tellraw @p [{"nbt":"Pos","entity":"@e[tag=missile-move-executer,limit=1]"}]
    #tellraw @p [{"nbt":"Pos","entity":"@e[tag=hit-weapon,distance=..26,sort=nearest,limit=1]"}]
    #tellraw @p [""]
    #tellraw @p [{"score" : {"name":"#hit-flag", "objective":"vp.reg1"}}]

#reset
tp @s 0.0 1.0 0.0
