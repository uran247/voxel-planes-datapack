#> plane:plane-info
#
# スコア情報をActionbarに表示
#
# @input
#   executer @e[tag=plane-root,tag=controll-target]
#
# @within function plane:plane-manager

#> private
# @private
    #declare score_holder #speed #飛行機の現在速度を示す
    #declare score_holder #throttle #飛行機の現在スロットルを示す
    #declare score_holder #altitude #飛行機の現在高度を示す
    #declare score_holder #reload1 #飛行機の武器1のリロード時間を示す
    #declare score_holder #reload2 #飛行機の武器2のリロード時間を示す
    #declare score_holder #reload3 #飛行機の武器3のリロード時間を示す
    #declare score_holder #reload4 #飛行機の武器4のリロード時間を示す
    #declare score_holder #reload5 #飛行機の武器5のリロード時間を示す

#### スコア情報をActionbarに表示 ####
#入力：entity 機体

#weaponチャットコンポーネント用タグをチェストの本にいれる
data modify storage plane-datapack plane-info set value [""]

#speed計算
scoreboard players operation #speed vp.reg1 = @s vp.speed
scoreboard players operation #speed vp.reg1 *= #288 vp.Num
scoreboard players operation #speed vp.reg1 /= #10000 vp.Num
#execute if score @s vp.speed <= @s vp.gear-po-max run data modify storage plane-datapack plane-info[0] set value "[{\"score\":{\"name\":\"#speed\",\"objective\":\"vp.reg1\"},\"color\":\"blue\"},{\"text\":\"km/h\",\"color\":\"blue\"}]"
#execute if score @s vp.speed > @s vp.gear-po-max run data modify storage plane-datapack plane-info[0] set value "[{\"score\":{\"name\":\"#speed\",\"objective\":\"vp.reg1\"},\"color\":\"red\"},{\"text\":\"km/h\",\"color\":\"red\"}]"
execute if score @s vp.speed < @s vp.gear-ret run data modify storage plane-datapack plane-info[0] set value "[{\"score\":{\"name\":\"#speed\",\"objective\":\"vp.reg1\"},\"color\":\"blue\"},{\"text\":\"km/h\",\"color\":\"blue\"}]"
execute if score @s vp.speed >= @s vp.gear-ret run data modify storage plane-datapack plane-info[0] set value "[{\"score\":{\"name\":\"#speed\",\"objective\":\"vp.reg1\"},\"color\":\"red\"},{\"text\":\"km/h\",\"color\":\"red\"}]"

#throt計算
scoreboard players operation #throttle vp.reg1 = @s vp.throttle
scoreboard players operation #throttle vp.reg1 *= #5 vp.Num

#高度取得
scoreboard players operation #altitude vp.reg1 = @s vp.PosY
scoreboard players operation #altitude vp.reg1 /= #10000 vp.Num

#武器の名前表示
execute store result score #weapon-number vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list

execute store result score #ammunition vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[0].current-ammunition
execute if score #weapon-number vp.reg1 matches 1.. unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[0].data{current-ammunition:-1} run data modify storage plane-datapack plane-info append value '[{"nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[0].data.name","storage":"oh_my_dat:","color":"green"},{"text":":","color":"green"},{"nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[0].data.current-ammunition","storage":"oh_my_dat:","color":"green"}]'
execute if score #weapon-number vp.reg1 matches 1.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[0].data{current-ammunition:-1} run data modify storage plane-datapack plane-info append value '[{"color":"white","text":"reloading:"},{"score":{"name":"#reload1","objective":"vp.reg1"},"color":"white"}]'
execute if score #weapon-number vp.reg1 matches 1.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[0].data{current-ammunition:-1} store result score #reload1 vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[0].data.current-reload 0.05
execute unless score #weapon-number vp.reg1 matches 1.. run data modify storage plane-datapack plane-info append value ""

execute store result score #ammunition vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[1].current-ammunition
execute if score #weapon-number vp.reg1 matches 2.. unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[1].data{current-ammunition:-1} run data modify storage plane-datapack plane-info append value '[{"text":",","color":"green"},{"nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[1].data.name","storage":"oh_my_dat:","color":"green"},{"text":":","color":"green"},{"nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[1].data.current-ammunition","storage":"oh_my_dat:","color":"green"}]'
execute if score #weapon-number vp.reg1 matches 2.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[1].data{current-ammunition:-1} run data modify storage plane-datapack plane-info append value '[{"text":","},{"text":"reloading:","color":"white"},{"score":{"name":"#reload2","objective":"vp.reg1"},"color":"white"}]'
execute if score #weapon-number vp.reg1 matches 1.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[1].data{current-ammunition:-1} store result score #reload2 vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[1].data.current-reload 0.05
execute unless score #weapon-number vp.reg1 matches 2.. run data modify storage plane-datapack plane-info append value ""

execute store result score #ammunition vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[2].current-ammunition
execute if score #weapon-number vp.reg1 matches 3.. unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[2].data{current-ammunition:-1} run data modify storage plane-datapack plane-info append value '[{"text":",","color":"green"},{"nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[2].data.name","storage":"oh_my_dat:","color":"green"},{"text":":","color":"green"},{"nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[2].data.current-ammunition","storage":"oh_my_dat:","color":"green"}]'
execute if score #weapon-number vp.reg1 matches 3.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[2].data{current-ammunition:-1} run data modify storage plane-datapack plane-info append value '[{"text":","},{"text":"reloading:","color":"white"},{"score":{"name":"#reload3","objective":"vp.reg1"},"color":"white"}]'
execute if score #weapon-number vp.reg1 matches 1.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[2].data{current-ammunition:-1} store result score #reload3 vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[2].data.current-reload 0.05
execute unless score #weapon-number vp.reg1 matches 3.. run data modify storage plane-datapack plane-info append value ""

execute store result score #ammunition vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[3].current-ammunition
execute if score #weapon-number vp.reg1 matches 4.. unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[3].data{current-ammunition:-1} run data modify storage plane-datapack plane-info append value '[{"text":",","color":"green"},{"nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[3].data.name","storage":"oh_my_dat:","color":"green"},{"text":":","color":"green"},{"nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[3].data.current-ammunition","storage":"oh_my_dat:","color":"green"}]'
execute if score #weapon-number vp.reg1 matches 4.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[3].data{current-ammunition:-1} run data modify storage plane-datapack plane-info append value '[{"text":","},{"text":"reloading:","color":"white"},{"score":{"name":"#reload4","objective":"vp.reg1"},"color":"white"}]'
execute if score #weapon-number vp.reg1 matches 1.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[3].data{current-ammunition:-1} store result score #reload4 vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[3].data.current-reload 0.05
execute unless score #weapon-number vp.reg1 matches 4.. run data modify storage plane-datapack plane-info append value ""

execute store result score #ammunition vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[4].current-ammunition
execute if score #weapon-number vp.reg1 matches 5.. unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[4].data{current-ammunition:-1} run data modify storage plane-datapack plane-info append value '[{"text":",","color":"green"},{"nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[4].data.name","storage":"oh_my_dat:","color":"green"},{"text":":","color":"green"},{"nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[4].data.current-ammunition","storage":"oh_my_dat:","color":"green"}]'
execute if score #weapon-number vp.reg1 matches 5.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[4].data{current-ammunition:-1} run data modify storage plane-datapack plane-info append value '[{"text":","},{"text":"reloading:","color":"white"},{"score":{"name":"#reload5","objective":"vp.reg1"},"color":"white"}]'
execute if score #weapon-number vp.reg1 matches 1.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[4].data{current-ammunition:-1} store result score #reload5 vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[4].data.current-reload 0.05
execute unless score #weapon-number vp.reg1 matches 5.. run data modify storage plane-datapack plane-info append value ""

data modify storage plane-datapack plane-info append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.name

#飛行機情報表示
title @p[tag=plane-rider] actionbar ["",{"nbt":"plane-info[0]","storage":"plane-datapack","interpret":true},{"text":" Throt:","color":"red"},{"score":{"name":"#throttle","objective":"vp.reg1"},"color":"red"},{"text":"% Alt:","color":"red"},{"score":{"name":"#altitude","objective":"vp.reg1"},"color":"red"},{"text":" Wpn:","color":"yellow"},{"nbt":"plane-info[6]","storage":"plane-datapack","color":"yellow"},{"text":" Ammo:{","color":"green"},{"nbt":"plane-info[1]","storage":"plane-datapack","interpret":true},{"nbt":"plane-info[2]","storage":"plane-datapack","interpret":true},{"nbt":"plane-info[3]","storage":"plane-datapack","interpret":true},{"nbt":"plane-info[4]","storage":"plane-datapack","interpret":true},{"text":"}","color":"green"}]

#失速してたら警告表示
execute if entity @s[tag=stall] run title @p[tag=plane-rider] times 0 1 1
execute if entity @s[tag=stall] run title @p[tag=plane-rider] title [{"text":"失速！！","color":"dark_red"}]

#墜落判定が出たら表示
execute if entity @s[tag=destroyed,tag=flying] run title @p[tag=plane-rider] times 0 2 0
execute if entity @s[tag=destroyed,tag=flying] run title @p[tag=plane-rider] title [{"text":"墜落！！操作不能","color":"dark_red"}]
