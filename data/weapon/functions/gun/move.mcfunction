#> weapon:gun/move
#
# 0-0-0-0-4の移動を伴う銃弾の移動処理をやる、0-0-0-0-4を実行者にして失踪を防ぐ
# as 0-0-0-0-4
# at @e[tag=gun]
#
# @within function weapon:gun/gun-manager

#### 移動&ヒット判定 ####
#ベクトル方向へエンティティの向きを向ける
data modify entity @s Pos set from storage minecraft:plane-datapack temporary.Pos
tp @e[tag=gun-move-executer,distance=..1,limit=1] ~ ~ ~ facing entity @s
    #tellraw @p [{"score" : {"name":"@s", "objective":"speedX"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"speedY"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"speedZ"}}]

#移動予定先までの間にブロックがあるか判定
function weapon:util/check-block
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
execute if score #hit-flag vp.reg1 matches 0 run tp @e[tag=gun-move-executer,distance=..1,limit=1] @s

#命中してた場合命中してたところに移動
execute if score #hit-flag vp.reg1 matches 1.. run tp @e[tag=gun-move-executer,distance=..1,limit=1] @e[tag=hit-weapon,distance=..26,sort=nearest,limit=1]

# entity返却
tag @s remove hit-weapon
tp @s 0.0 1.0 0.0