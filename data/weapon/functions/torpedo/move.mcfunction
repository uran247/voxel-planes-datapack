#> weapon:torpedo/move
#
# as @e[tag=block-checker,distance=..1,x=0,y=1,z=0,limit=1]
# at @e[tag=torpedo-move-executer]
#
# @within function weapon:torpedo/torpedo-manager

#ベクトル方向へエンティティの向きを向ける
data modify entity @s Pos set from storage minecraft:plane-datapack temporary.Pos
tp @e[tag=torpedo-move-executer,distance=..1,limit=1] ~ ~ ~ facing entity @s

#移動予定先までの間にブロックがあるか判定
function weapon:torpedo/check-block-torpedo
execute unless score #x vp.return matches 0 unless score #y vp.return matches 100 unless score #z vp.return matches 0 run scoreboard players set #hit-flag vp.reg1 1
execute if score #hit-flag vp.reg1 matches 1 run tag @s add hit-weapon
execute if score #hit-flag vp.reg1 matches 1 run data modify entity @s Pos set from storage voxel-planes:return return

#移動予定先までの間にエンティティがいるか判定
execute facing entity @s eyes run function weapon:util/check-entity
execute if entity @e[tag=hit-on-line,tag=!entity-nohit,distance=..20] run scoreboard players set #hit-flag vp.reg1 2

#移動予定先までの間のエンティティで命中可能なやつにタグ付け
execute if score #hit-flag vp.reg1 matches 2 as @e[tag=hit-on-line,tag=!entity-nohit,distance=..20] unless score @s vp.plane-id = #plane-id vp.reg1 run tag @s add hit-weapon
execute if score #hit-flag vp.reg1 matches 2 unless entity @e[tag=hit-weapon,distance=..20] run scoreboard players set #hit-flag vp.reg1 0

#命中していない場合移動予定先へ移動
execute if score #hit-flag vp.reg1 matches 0 run tp @e[tag=torpedo-move-executer,distance=..1,limit=1] @s

#命中してた場合命中してたところに移動
execute if score #hit-flag vp.reg1 matches 1.. run tp @e[tag=torpedo-move-executer,distance=..1,limit=1] @e[tag=hit-weapon,distance=..26,sort=nearest,limit=1]
    #tellraw @p [{"score" : {"name":"#hit-flag", "objective":"vp.reg1"}}]


# entity返却
tag @s remove hit-weapon
tp @s 0.0 1.0 0.0 0.0 0.0
