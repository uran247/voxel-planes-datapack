#> weapon:dropping/move
#
# as @e_bomb
# at @e_bomb
#
# @within function weapon:dropping/**

#移動予定先が読み込まれていなかったら処理終了
$execute unless loaded ~$(x) ~$(y) ~$(z) run return -1

#ベクトル方向へエンティティの向きを向ける
$tp @s ~ ~ ~ facing ~$(x) ~$(y) ~$(z)
    
#移動予定先までの間にブロックがあるか判定
$tp 0-0-0-0-4 ~$(x) ~$(y) ~$(z)
execute at @s as 0-0-0-0-4 run function weapon:util/check-block-between-entity
execute unless data storage voxel-planes:return {return:[0d,1.0d,0d]} run scoreboard players set #hit-flag vp.reg1 1
execute if score #hit-flag vp.reg1 matches 1 run data modify entity 0-0-0-0-4 Pos set from storage voxel-planes:return return
execute if score #hit-flag vp.reg1 matches 1 run tag 0-0-0-0-4 add hit-weapon
    #execute unless entity 0-0-0-0-4 run say no

#移動予定先までの間に自分のパーツ以外のヒット可能エンティティがいるか判定
execute at @s facing entity 0-0-0-0-4 eyes as 0-0-0-0-4 run function weapon:util/check-entity-between-entity
execute as @e[tag=hit-on-line,distance=..20] if score @s vp.plane-id = #plane-id vp.reg1 run tag @s remove hit-on-line
execute if entity @e[tag=hit-on-line,distance=..20] run scoreboard players set #hit-flag vp.reg1 2

#移動予定先までの間のエンティティで命中可能なやつにタグ付け
execute if score #hit-flag vp.reg1 matches 2 as @e[tag=hit-on-line,distance=..20] run tag @s add hit-weapon
    #execute if score #hit-flag vp.reg1 matches 2 run tellraw @p [{"nbt":"Tags","entity":"@e[tag=hit-on-line,limit=1,sort=nearest]"}] 
    #execute if score #hit-flag vp.reg1 matches 2 run tellraw @p [{"nbt":"UUID","entity":"@e[tag=hit-on-line,limit=1,sort=nearest]"}] 

#命中していない場合移動予定先へ移動
$execute if score #hit-flag vp.reg1 matches 0 run tp ~$(x) ~$(y) ~$(z)
    #execute as 0-0-0-0-4 run tellraw @p [{"nbt":"Pos","entity": "@s"}]
    #execute if entity @s[scores={vp.age=1200}] run tellraw @p [{"nbt":"Pos","entity": "@s"}]
    #execute if entity @s[scores={vp.age=1200}] as 0-0-0-0-4 run tellraw @p [{"nbt":"Pos","entity": "@s"}]
    #tellraw @p [{"score":{"name": "#hit-flag","objective": "vp.reg1"}}]

#命中してた場合命中してたところに移動
execute if score #hit-flag vp.reg1 matches 1.. run tp @s @e[tag=hit-weapon,distance=..26,sort=nearest,limit=1]

# reset
tag @e[tag=hit-on-line,distance=..21] remove hit-on-line
tag 0-0-0-0-4 remove hit-weapon
tp 0-0-0-0-4 0.0 1.0 0.0 0.0 0.0