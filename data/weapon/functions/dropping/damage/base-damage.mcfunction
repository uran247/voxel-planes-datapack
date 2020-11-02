#入力:entity:@e[tag=base,distance=..50] score:#damage reg1
#処理:baseにダメージを与え、クリアスコアに反映
#戻り:
execute store result score #basehp reg1 run data get entity @s HandItems[0].tag.BaseHP
scoreboard players operation #basehp reg1 -= #damage reg1
scoreboard players operation @p[tag=bomb-owner] shootdown += #damage reg1
execute store result entity @s HandItems[0].tag.BaseHP int 1 run scoreboard players get #basehp reg1
