#> item:plane2item/plane2item
#
#入力　entity:plane
#処理　機種に応じたplane2itemを実行
#
# @within function plane:controll/controll-ground

#> prv
# @private
    #declare tag plane2item-plane-parts

#同じIDのパーツ取得
scoreboard players operation #plane-id vp.reg1 = @s vp.plane-id
execute as @e[tag=plane] if score @s vp.plane-id = #plane-id vp.reg1 run tag @s add plane2item-plane-parts

#個別処理
function item:plane2item/plane2item-individual-plane

#ロバチェスト内のアイテム放出
data merge block 0 1 0 {Items:[]}
data modify block 0 1 0 Items set from entity @e[type=minecraft:donkey,tag=plane2item-plane-parts,tag=plane-seat,limit=1] Items
execute at @s run loot spawn ~ ~ ~ mine 0 1 0 air{load:1b}
data merge block 0 1 0 {Items:[]}

#キル
execute as @e[tag=plane2item-plane-parts] at @s run tp @s ~ -40 ~
kill @e[tag=plane2item-plane-parts]
kill @s 