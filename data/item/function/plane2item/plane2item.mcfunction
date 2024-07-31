#> item:plane2item/plane2item
#
# @input
#   as @e[tag=plane-root]
#   at @e[tag=plane-root]
#   oh_my_dat @e[tag=plane-root]
#
#処理　機種に応じたplane2itemを実行
#
# @within function plane:controll/controll-ground

#> prv
# @private
    #declare tag plane2item-plane-parts

# ohmydat呼び出し
function oh_my_dat:please

#同じIDのパーツ取得
scoreboard players operation #plane-id vp.reg1 = @s vp.plane-id
execute as @e[tag=plane] if score @s vp.plane-id = #plane-id vp.reg1 run tag @s add plane2item-plane-parts

#個別処理
function item:plane2item/call-loottable with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].plane-data

#ロバチェスト内のアイテム放出
data merge block 0 1 0 {Items:[]}
data modify block 0 1 0 Items set from entity @e[type=minecraft:donkey,tag=plane2item-plane-parts,tag=plane-seat,limit=1] Items
execute at @s run loot spawn ~ ~ ~ mine 0 1 0 stick[minecraft:custom_data={"load":"1b"}]
data merge block 0 1 0 {Items:[]}

#キル
execute as @e[tag=plane2item-plane-parts] at @s run tp @s ~ -256 ~
kill @e[tag=plane2item-plane-parts]
kill @s 