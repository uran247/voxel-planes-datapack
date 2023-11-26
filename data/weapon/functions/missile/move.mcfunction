#> weapon:missile/move
#
# as @e[tag=block-checker,distance=..1,x=0,y=1,z=0,limit=1]
# at @e[tag=torpedo-move-executer]
#
# @within function weapon:missile/ir-missile-manager

#移動予定先が読み込まれていなかったら処理打ち切り
$execute unless loaded ~$(x) ~$(y) ~$(z) run return -1

#ベクトル方向へエンティティの向きを向ける
$tp @s ~ ~ ~ facing ~$(x) ~$(y) ~$(z)

#移動予定先までの間にブロックがあるか判定
$tp 0-0-0-0-4 ~$(x) ~$(y) ~$(z)
execute at @s as 0-0-0-0-4 run function weapon:util/check-block-between-entity
execute unless data storage voxel-planes:return {return:[0d,1.0d,0d]} run scoreboard players set #hit-flag vp.reg1 1
execute if score #hit-flag vp.reg1 matches 1 run data modify entity 0-0-0-0-4 Pos set from storage voxel-planes:return return
execute if score #hit-flag vp.reg1 matches 1 run tag 0-0-0-0-4 add hit-weapon

#移動予定先までの間にエンティティがいるか判定
execute at @s facing entity 0-0-0-0-4 eyes as 0-0-0-0-4 run function weapon:util/check-entity-proximity
execute if entity @e[tag=hit-on-line,tag=!entity-nohit,distance=..20] run scoreboard players set #hit-flag vp.reg1 2

#移動予定先までの間のエンティティで命中可能なやつにタグ付け
execute if score #hit-flag vp.reg1 matches 2 as @e[tag=hit-on-line,tag=!entity-nohit,distance=..20] unless score @s vp.plane-id = #plane-id vp.reg1 run tag @s add hit-weapon
execute if score #hit-flag vp.reg1 matches 2 unless entity @e[tag=hit-weapon,distance=..20] run scoreboard players set #hit-flag vp.reg1 0

#命中していない場合移動予定先へ移動
$execute if score #hit-flag vp.reg1 matches 0 run tp ~$(x) ~$(y) ~$(z)

#ブロックに命中してた場合命中してたところに移動
execute if score #hit-flag vp.reg1 matches 1 run tp @s @e[tag=hit-weapon,distance=..26,sort=nearest,limit=1]

#エンティティに命中してた場合進路上のエンティティの1番近くに移動
execute if score #hit-flag vp.reg1 matches 2 rotated as @s positioned as @e[tag=hit-weapon,distance=..26,sort=nearest,limit=1] positioned ^ ^ ^1000 facing entity @s feet positioned ^ ^ ^1000 run tp @s ~ ~ ~ ~ ~

    #tellraw @p [{"nbt":"Pos","entity":"@e[tag=missile-move-executer,limit=1]"}]
    #tellraw @p [{"nbt":"Pos","entity":"@e[tag=hit-weapon,distance=..26,sort=nearest,limit=1]"}]
    #tellraw @p [""]
    #tellraw @p [{"score" : {"name":"#hit-flag", "objective":"vp.reg1"}}]

#reset
tag 0-0-0-0-4 remove hit-weapon
tp 0-0-0-0-4 0.0 1.0 0.0 0.0 0.0
