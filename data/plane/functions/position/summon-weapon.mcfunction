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
    #declare score_holder #has-weapon #武器を持っているかどうかのフラグ
    #declare score_holder #max-weapon-ammunition #最大武器数
    #declare score_holder #current-weapon-ammunition #現在武器数
    #declare score_holder #weapon-number #召喚されている武器数
    #declare score_holder #return #返り値


# 爆弾装備タグがついていて爆弾が0で弾薬がMAXなら召喚
scoreboard players set #return vp.reg1 0
execute store success score #has-weapon vp.reg1 if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[].data{type:bomb}
execute if score #has-weapon vp.reg1 matches 1.. store result score #max-weapon-ammunition vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[].data{type:bomb}.max-ammunition
execute if score #has-weapon vp.reg1 matches 1.. store result score #current-weapon-ammunition vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[].data{type:bomb}.current-ammunition
execute if score #has-weapon vp.reg1 matches 1.. store result score #weapon-number vp.reg1 if entity @e[tag=target-parts,tag=plane-bomb,distance=..32]
execute if score #has-weapon vp.reg1 matches 1.. if score #weapon-number vp.reg1 matches 0 if score #max-weapon-ammunition vp.reg1 = #current-weapon-ammunition vp.reg1 at @s run function plane:position/summon-weapon/summon-bombs
execute if score #return vp.reg1 matches 1.. as @e[type=item_display,tag=plane-bomb,tag=!dropping,distance=..10] if score @s vp.plane-id = #plane-id vp.reg1 run tag @s add target-parts
execute if score #return vp.reg1 matches 1.. run tag @s add need-calc-offset

# ロケット装備タグがついていてロケットが0なら召喚
scoreboard players set #return vp.reg1 0
execute store success score #has-weapon vp.reg1 if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[].data{type:rocket}
execute if score #has-weapon vp.reg1 matches 1.. store result score #max-weapon-ammunition vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[].data{type:rocket}.max-ammunition
execute if score #has-weapon vp.reg1 matches 1.. store result score #current-weapon-ammunition vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[].data{type:rocket}.current-ammunition
execute if score #has-weapon vp.reg1 matches 1.. store result score #weapon-number vp.reg1 if entity @e[tag=target-parts,tag=plane-rocket,distance=..32]
execute if score #has-weapon vp.reg1 matches 1.. if score #weapon-number vp.reg1 matches 0 if score #max-weapon-ammunition vp.reg1 = #current-weapon-ammunition vp.reg1 at @s run function plane:position/summon-weapon/summon-rocket
execute if score #return vp.reg1 matches 1.. as @e[type=item_display,tag=plane-rocket,tag=!rocket-moving,distance=..10] if score @s vp.plane-id = #plane-id vp.reg1 run tag @s add target-parts
execute if score #return vp.reg1 matches 1.. run tag @s add need-calc-offset

# 魚雷装備タグがついていて魚雷が0なら召喚
scoreboard players set #return vp.reg1 0
# 魚雷を装備しているかストレージ確認
execute store success score #has-weapon vp.reg1 if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[].data{type:torpedo}
# 魚雷の現在弾数、最大弾数、現在召喚している数を確認
execute if score #has-weapon vp.reg1 matches 1.. store result score #max-weapon-ammunition vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[].data{type:torpedo}.max-ammunition
execute if score #has-weapon vp.reg1 matches 1.. store result score #current-weapon-ammunition vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[].data{type:torpedo}.current-ammunition
execute if score #has-weapon vp.reg1 matches 1.. store result score #weapon-number vp.reg1 if entity @e[tag=target-parts,tag=plane-torpedo,distance=..32]
# 魚雷を持っていて、魚雷召喚数が0、現在弾数=最大弾数の時魚雷を新たに召喚する。
execute if score #has-weapon vp.reg1 matches 1.. if score #weapon-number vp.reg1 matches 0 if score #max-weapon-ammunition vp.reg1 = #current-weapon-ammunition vp.reg1 at @s run function plane:position/summon-weapon/summon-torpedos
execute if score #return vp.reg1 matches 1.. as @e[type=item_display,tag=plane-torpedo,tag=!torpedo-dropping,distance=..10] if score @s vp.plane-id = #plane-id vp.reg1 run tag @s add target-parts
execute if score #return vp.reg1 matches 1.. run tag @s add need-calc-offset

# ミサイル装備タグがついていてミサイルが0なら召喚
scoreboard players set #return vp.reg1 0
# ミサイルを装備しているかストレージ確認
execute store success score #has-weapon vp.reg1 if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[].data{type:ir-missile}
# ミサイルの現在弾数、最大弾数、現在召喚している数を確認
execute if score #has-weapon vp.reg1 matches 1.. store result score #max-weapon-ammunition vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[].data{type:ir-missile}.max-ammunition
execute if score #has-weapon vp.reg1 matches 1.. store result score #current-weapon-ammunition vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[].data{type:ir-missile}.current-ammunition
execute if score #has-weapon vp.reg1 matches 1.. store result score #weapon-number vp.reg1 if entity @e[tag=target-parts,tag=plane-missile,distance=..32]
# ミサイルを持っていて、ミサイル召喚数が0、現在弾数=最大弾数の時ミサイルを新たに召喚する。
execute if score #has-weapon vp.reg1 matches 1.. if score #weapon-number vp.reg1 matches 0 if score #max-weapon-ammunition vp.reg1 = #current-weapon-ammunition vp.reg1 at @s run function plane:position/summon-weapon/summon-missiles
execute if score #return vp.reg1 matches 1.. as @e[type=item_display,tag=plane-missile,tag=!missile-moving,distance=..10] if score @s vp.plane-id = #plane-id vp.reg1 run tag @s add target-parts
execute if score #return vp.reg1 matches 1.. run tag @s add need-calc-offset
