#> weapon:gun/move
#
# block-checkerの移動を伴う銃弾の移動処理をやる、block-checkerを実行者にして失踪を防ぐ
# as block-checker
# at @e[tag=gun]
#
# @within function weapon:gun/gun-manager

#### 移動&ヒット判定 ####
#ベクトル方向へエンティティの向きを向ける
$tp @s ~ ~ ~ facing ~$(x) ~$(y) ~$(z)
    #tellraw @p [{"score" : {"name":"@s", "objective":"speedX"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"speedY"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"speedZ"}}]

#移動予定先までの間にブロックがあるか判定
scoreboard players operation #current-range vp.reg1 = @s vp.speed
execute at @s run function weapon:util/check-block-new
#execute unless score #x vp.return matches 0 unless score #y vp.return matches 100 unless score #z vp.return matches 0 run scoreboard players set #hit-flag vp.reg1 1
#execute if score #hit-flag vp.reg1 matches 1 run tag @s add hit-weapon
#execute if score #hit-flag vp.reg1 matches 1 run data modify entity @s Pos set from storage voxel-planes:return return
execute unless data storage voxel-planes:return {return:[0d,1.0d,0d]} run scoreboard players set #hit-flag vp.reg1 1
execute if score #hit-flag vp.reg1 matches 1 run data modify entity 0-0-0-0-4 Pos set from storage voxel-planes:return return
execute if score #hit-flag vp.reg1 matches 1 run tag 0-0-0-0-4 add hit-weapon
execute if score #hit-flag vp.reg1 matches 1 run tag @s add hit-weapon

#移動予定先までの間にエンティティがいるか判定
data remove storage voxel-planes:input input
execute store result storage voxel-planes:input input.range float 0.05 run scoreboard players get @s vp.speed
execute facing entity @s eyes run function weapon:util/check-entity-new with storage voxel-planes:input input
execute if entity @e[tag=hit-on-line,tag=!entity-nohit,distance=..20] run scoreboard players set #hit-flag vp.reg1 2

#移動予定先までの間のエンティティで命中可能なやつにタグ付け
execute if score #hit-flag vp.reg1 matches 2 as @e[tag=hit-on-line,tag=!entity-nohit,distance=..20] unless score @s vp.plane-id = #plane-id vp.reg1 run tag @s add hit-weapon
execute if score #hit-flag vp.reg1 matches 2 unless entity @e[tag=hit-weapon,distance=..20] run scoreboard players set #hit-flag vp.reg1 0

#命中していない場合移動予定先へ移動
$execute if score #hit-flag vp.reg1 matches 0 run tp @s ~$(x) ~$(y) ~$(z)

#命中してた場合命中してたところに移動
execute if score #hit-flag vp.reg1 matches 1.. run tp @s @e[tag=hit-weapon,distance=..20,sort=nearest,limit=1]
    #tellraw @p {"score":{"name": "#hit-flag", "objective": "vp.reg1"}}

# entity返却
tag 0-0-0-0-4 remove hit-weapon
tp 0-0-0-0-4 0.0 1.0 0.0