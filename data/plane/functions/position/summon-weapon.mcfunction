#> plane:position/summon-weapon
#
# @input
#   executer @e[tag=plane-root]
#
# @within function plane:position/position
#
#> private
# @private
    #declare score_holder #summoned-bomb #爆弾の召喚に成功したかどうかのフラグ
    #declare score_holder #summoned-rocket #ロケットの召喚に成功したかどうかのフラグ
    #declare score_holder #plane-id #実行者のplane-id
    #declare score_holder #has-bomb #爆弾を持っているかどうかのフラグ
    #declare score_holder #has-rocket #ロケットを持っているかどうかのフラグ
    #declare score_holder #max-bomb-ammunition #最大爆弾数
    #declare score_holder #current-bomb-ammunition #現在爆弾数
    #declare score_holder #bomb-number #召喚されている爆弾数
    #declare score_holder #max-rocket-ammunition #最大ロケット数
    #declare score_holder #current-rocket-ammunition #現在ロケット数
    #declare score_holder #rocket-number #召喚されているロケット数
    #declare score_holder #return #返り値


#爆弾装備タグがついていて爆弾が0で弾薬がMAXなら召喚
scoreboard players set #return vp.reg1 0
execute store success score #has-bomb vp.reg1 if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[].data{type:bomb}
execute if score #has-bomb vp.reg1 matches 1.. store result score #max-bomb-ammunition vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[].data{type:bomb}.max-ammunition
execute if score #has-bomb vp.reg1 matches 1.. store result score #current-bomb-ammunition vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[].data{type:bomb}.current-ammunition
execute if score #has-bomb vp.reg1 matches 1.. store result score #bomb-number vp.reg1 if entity @e[tag=target-parts,tag=plane-bomb]
execute if score #has-bomb vp.reg1 matches 1.. if score #bomb-number vp.reg1 matches 0 if score #max-bomb-ammunition vp.reg1 = #current-bomb-ammunition vp.reg1 at @s run function plane:position/summon-weapon/summon-bombs
execute if score #return vp.reg1 matches 1.. as @e[type=armor_stand,tag=plane-bomb,tag=!dropping,distance=..10] if score @s vp.plane-id = #plane-id vp.reg1 run tag @s add target-parts
execute if score #return vp.reg1 matches 1.. run tag @s add need-calc-offset

#ロケット装備タグがついていて爆弾が0なら召喚
scoreboard players set #return vp.reg1 0
execute store success score #has-rocket vp.reg1 if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[].data{type:rocket}
execute if score #has-rocket vp.reg1 matches 1.. store result score #max-rocket-ammunition vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[].data{type:rocket}.max-ammunition
execute if score #has-rocket vp.reg1 matches 1.. store result score #current-rocket-ammunition vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[].data{type:rocket}.current-ammunition
execute if score #has-rocket vp.reg1 matches 1.. store result score #rocket-number vp.reg1 if entity @e[tag=target-parts,tag=plane-rocket]
execute if score #has-rocket vp.reg1 matches 1.. if score #rocket-number vp.reg1 matches 0 if score #max-rocket-ammunition vp.reg1 = #current-rocket-ammunition vp.reg1 at @s store success score #summoned-rocket vp.reg1 run function plane:position/summon-weapon/summon-rocket
execute if score #return vp.reg1 matches 1.. as @e[type=armor_stand,tag=plane-rocket,tag=!rocket-moving,distance=..10] if score @s vp.plane-id = #plane-id vp.reg1 run tag @s add target-parts
execute if score #return vp.reg1 matches 1.. run tag @s add need-calc-offset
