#入力:entity:@e[tag=base,distance=..50] score:#damage vp.reg1
#処理:baseにダメージを与え、クリアスコアに反映
#戻り:
execute store result score #basehp vp.reg1 run data get entity @s HandItems[0].tag.BaseHP
scoreboard players operation #basehp vp.reg1 -= #damage vp.reg1
scoreboard players operation @p[tag=rocket-owner] vp.shootdown += #damage vp.reg1
execute store result entity @s HandItems[0].tag.BaseHP int 1 run scoreboard players get #basehp vp.reg1
