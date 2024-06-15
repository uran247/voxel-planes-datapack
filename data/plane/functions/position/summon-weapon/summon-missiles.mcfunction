#> plane:position/summon-weapon/summon-missiles
#
# ミサイル召喚
#
# @input
#   executer @e[tag=plane-root,tag=plane-position-executer]
#   entity @e[tag=target-parts]
#   oh_my_dat @e[tag=plane-root]
#
# @within plane:position/summon-weapon

#> private
# @private
    #declare tag weapon-init #初期化処理中の武器エンティティであることを示す
    #declare score_holder #return #返り値を示す
    #declare score_holder #summon-number #爆弾召喚数を示す

#召喚数取得
execute store result score #summon-number vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:ir-missile}}].data.missiles

#ロケット召喚
execute if score #summon-number vp.reg1 matches 1.. run data modify storage minecraft:plane-datapack temporary.weapon set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:ir-missile}}].data.missiles[0]
execute if score #summon-number vp.reg1 matches 1.. run function plane:weapon/util/summon-missile

execute if score #summon-number vp.reg1 matches 2.. run data modify storage minecraft:plane-datapack temporary.weapon set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:ir-missile}}].data.missiles[1]
execute if score #summon-number vp.reg1 matches 2.. run function plane:weapon/util/summon-missile

execute if score #summon-number vp.reg1 matches 3.. run data modify storage minecraft:plane-datapack temporary.weapon set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:ir-missile}}].data.missiles[2]
execute if score #summon-number vp.reg1 matches 3.. run function plane:weapon/util/summon-missile

execute if score #summon-number vp.reg1 matches 4.. run data modify storage minecraft:plane-datapack temporary.weapon set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:ir-missile}}].data.missiles[3]
execute if score #summon-number vp.reg1 matches 4.. run function plane:weapon/util/summon-missile

execute if score #summon-number vp.reg1 matches 5.. run data modify storage minecraft:plane-datapack temporary.weapon set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:ir-missile}}].data.missiles[4]
execute if score #summon-number vp.reg1 matches 5.. run function plane:weapon/util/summon-missile

execute if score #summon-number vp.reg1 matches 6.. run data modify storage minecraft:plane-datapack temporary.weapon set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:ir-missile}}].data.missiles[5]
execute if score #summon-number vp.reg1 matches 6.. run function plane:weapon/util/summon-missile

execute if score #summon-number vp.reg1 matches 7.. run data modify storage minecraft:plane-datapack temporary.weapon set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:ir-missile}}].data.missiles[6]
execute if score #summon-number vp.reg1 matches 7.. run function plane:weapon/util/summon-missile

execute if score #summon-number vp.reg1 matches 8.. run data modify storage minecraft:plane-datapack temporary.weapon set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:ir-missile}}].data.missiles[7]
execute if score #summon-number vp.reg1 matches 8.. run function plane:weapon/util/summon-missile

execute if score #summon-number vp.reg1 matches 9.. run data modify storage minecraft:plane-datapack temporary.weapon set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:ir-missile}}].data.missiles[8]
execute if score #summon-number vp.reg1 matches 9.. run function plane:weapon/util/summon-missile

execute if score #summon-number vp.reg1 matches 10.. run data modify storage minecraft:plane-datapack temporary.weapon set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:ir-missile}}].data.missiles[9]
execute if score #summon-number vp.reg1 matches 10.. run function plane:weapon/util/summon-missile

execute if score #summon-number vp.reg1 matches 11.. run data modify storage minecraft:plane-datapack temporary.weapon set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:ir-missile}}].data.missiles[10]
execute if score #summon-number vp.reg1 matches 11.. run function plane:weapon/util/summon-missile

execute if score #summon-number vp.reg1 matches 12.. run data modify storage minecraft:plane-datapack temporary.weapon set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:ir-missile}}].data.missiles[11]
execute if score #summon-number vp.reg1 matches 12.. run function plane:weapon/util/summon-missile

execute if score #summon-number vp.reg1 matches 13.. run data modify storage minecraft:plane-datapack temporary.weapon set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:ir-missile}}].data.missiles[12]
execute if score #summon-number vp.reg1 matches 13.. run function plane:weapon/util/summon-missile

execute if score #summon-number vp.reg1 matches 14.. run data modify storage minecraft:plane-datapack temporary.weapon set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:ir-missile}}].data.missiles[13]
execute if score #summon-number vp.reg1 matches 14.. run function plane:weapon/util/summon-missile

execute if score #summon-number vp.reg1 matches 15.. run data modify storage minecraft:plane-datapack temporary.weapon set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:ir-missile}}].data.missiles[14]
execute if score #summon-number vp.reg1 matches 15.. run function plane:weapon/util/summon-missile

execute if score #summon-number vp.reg1 matches 16.. run data modify storage minecraft:plane-datapack temporary.weapon set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:ir-missile}}].data.missiles[15]
execute if score #summon-number vp.reg1 matches 16.. run function plane:weapon/util/summon-missile

execute if score #summon-number vp.reg1 matches 17.. run data modify storage minecraft:plane-datapack temporary.weapon set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:ir-missile}}].data.missiles[16]
execute if score #summon-number vp.reg1 matches 17.. run function plane:weapon/util/summon-missile

execute if score #summon-number vp.reg1 matches 18.. run data modify storage minecraft:plane-datapack temporary.weapon set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:ir-missile}}].data.missiles[17]
execute if score #summon-number vp.reg1 matches 18.. run function plane:weapon/util/summon-missile

execute if score #summon-number vp.reg1 matches 19.. run data modify storage minecraft:plane-datapack temporary.weapon set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:ir-missile}}].data.missiles[18]
execute if score #summon-number vp.reg1 matches 19.. run function plane:weapon/util/summon-missile

execute if score #summon-number vp.reg1 matches 20.. run data modify storage minecraft:plane-datapack temporary.weapon set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:ir-missile}}].data.missiles[19]
execute if score #summon-number vp.reg1 matches 20.. run function plane:weapon/util/summon-missile

execute if score #summon-number vp.reg1 matches 21.. run data modify storage minecraft:plane-datapack temporary.weapon set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:ir-missile}}].data.missiles[20]
execute if score #summon-number vp.reg1 matches 21.. run function plane:weapon/util/summon-missile

execute if score #summon-number vp.reg1 matches 22.. run data modify storage minecraft:plane-datapack temporary.weapon set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:ir-missile}}].data.missiles[21]
execute if score #summon-number vp.reg1 matches 22.. run function plane:weapon/util/summon-missile

execute if score #summon-number vp.reg1 matches 23.. run data modify storage minecraft:plane-datapack temporary.weapon set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:ir-missile}}].data.missiles[22]
execute if score #summon-number vp.reg1 matches 23.. run function plane:weapon/util/summon-missile

execute if score #summon-number vp.reg1 matches 24.. run data modify storage minecraft:plane-datapack temporary.weapon set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:ir-missile}}].data.missiles[23]
execute if score #summon-number vp.reg1 matches 24.. run function plane:weapon/util/summon-missile

    #tellraw @p [{"score" : {"name":"#summon-number", "objective":"vp.reg1"}}]

scoreboard players operation @e[type=item_display,tag=weapon-init,distance=..1] vp.plane-id = @s vp.plane-id
execute as @e[type=item_display,tag=weapon-init,distance=..1] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[type=item_display,tag=weapon-init,distance=..1] remove weapon-init

scoreboard players set #return vp.reg1 1

