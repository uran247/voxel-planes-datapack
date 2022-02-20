#> plane:weapon/use-weapon/use-gun
#
# 機銃を使用
#
# @input
#   execute @e[tag=plane-root]
#
# @within function plane:weapon/use-weapon

#> private
# @private
    #declare tag gun-init #銃弾の初期化処理中であることを示す
    #
    #declare score_holder #is-bullet #銃弾を発射すべきかどうかを示す,0のときtrue
    #declare score_holder #is-tracer #曳光弾を発射すべきかどうかを示す,0のときtrue
    #
    #declare score_holder #ammunition #残弾数を示す
    #declare score_holder #bullet-number

#曳光弾判定
scoreboard players operation #is-bullet vp.reg1 = #ammunition vp.reg1
scoreboard players operation #is-tracer vp.reg1 = #ammunition vp.reg1
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data{size:7p7mm} run scoreboard players operation #is-bullet vp.reg1 %= #3 vp.Num
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data{size:7p7mm} run scoreboard players operation #is-tracer vp.reg1 %= #6 vp.Num
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data{size:12p7mm} run scoreboard players operation #is-bullet vp.reg1 %= #4 vp.Num
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data{size:12p7mm} run scoreboard players operation #is-tracer vp.reg1 %= #8 vp.Num
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data{size:13mm} run scoreboard players operation #is-bullet vp.reg1 %= #4 vp.Num
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data{size:13mm} run scoreboard players operation #is-tracer vp.reg1 %= #8 vp.Num
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data{size:20mm} run scoreboard players operation #is-bullet vp.reg1 %= #3 vp.Num
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data{size:20mm} run scoreboard players operation #is-tracer vp.reg1 %= #6 vp.Num
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data{size:23mm} run scoreboard players operation #is-bullet vp.reg1 %= #3 vp.Num
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data{size:23mm} run scoreboard players operation #is-tracer vp.reg1 %= #6 vp.Num
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data{size:30mm} run scoreboard players operation #is-bullet vp.reg1 %= #4 vp.Num
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data{size:30mm} run scoreboard players operation #is-tracer vp.reg1 %= #8 vp.Num
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data{size:37mm} run scoreboard players operation #is-bullet vp.reg1 %= #4 vp.Num
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data{size:37mm} run scoreboard players operation #is-tracer vp.reg1 %= #8 vp.Num

#召喚弾数取得
execute store result score #bullet-number vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.bullets

#召喚
execute if score #bullet-number vp.reg1 matches 1.. if score #is-bullet vp.reg1 matches 0 run data modify storage minecraft:plane-datapack temporary.weapon set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.bullets[0]
execute if score #bullet-number vp.reg1 matches 1.. if score #is-bullet vp.reg1 matches 0 run function plane:weapon/util/summon-bullet

execute if score #bullet-number vp.reg1 matches 2.. if score #is-bullet vp.reg1 matches 0 run data modify storage minecraft:plane-datapack temporary.weapon set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.bullets[1]
execute if score #bullet-number vp.reg1 matches 2.. if score #is-bullet vp.reg1 matches 0 run function plane:weapon/util/summon-bullet

execute if score #bullet-number vp.reg1 matches 3.. if score #is-bullet vp.reg1 matches 0 run data modify storage minecraft:plane-datapack temporary.weapon set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.bullets[2]
execute if score #bullet-number vp.reg1 matches 3.. if score #is-bullet vp.reg1 matches 0 run function plane:weapon/util/summon-bullet

execute if score #bullet-number vp.reg1 matches 4.. if score #is-bullet vp.reg1 matches 0 run data modify storage minecraft:plane-datapack temporary.weapon set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.bullets[3]
execute if score #bullet-number vp.reg1 matches 4.. if score #is-bullet vp.reg1 matches 0 run function plane:weapon/util/summon-bullet

execute if score #bullet-number vp.reg1 matches 5.. if score #is-bullet vp.reg1 matches 0 run data modify storage minecraft:plane-datapack temporary.weapon set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.bullets[4]
execute if score #bullet-number vp.reg1 matches 5.. if score #is-bullet vp.reg1 matches 0 run function plane:weapon/util/summon-bullet

execute if score #bullet-number vp.reg1 matches 6.. if score #is-bullet vp.reg1 matches 0 run data modify storage minecraft:plane-datapack temporary.weapon set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.bullets[5]
execute if score #bullet-number vp.reg1 matches 6.. if score #is-bullet vp.reg1 matches 0 run function plane:weapon/util/summon-bullet

execute if score #bullet-number vp.reg1 matches 7.. if score #is-bullet vp.reg1 matches 0 run data modify storage minecraft:plane-datapack temporary.weapon set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.bullets[6]
execute if score #bullet-number vp.reg1 matches 7.. if score #is-bullet vp.reg1 matches 0 run function plane:weapon/util/summon-bullet

execute if score #bullet-number vp.reg1 matches 8.. if score #is-bullet vp.reg1 matches 0 run data modify storage minecraft:plane-datapack temporary.weapon set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.bullets[7]
execute if score #bullet-number vp.reg1 matches 8.. if score #is-bullet vp.reg1 matches 0 run function plane:weapon/util/summon-bullet

#データ付与
execute as @e[tag=gun-init,distance=..1] run data modify entity @s Tags append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.size
execute as @e[type=armor_stand,tag=gun-init,distance=..1] run data modify entity @s Tags append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.tracer
execute as @e[tag=gun-init,distance=..1] store result score @s vp.speed run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.speed 10
execute as @e[tag=gun-init,distance=..1] store result score @s vp.damage run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.damage
scoreboard players set @e[type=armor_stand,tag=gun-init,distance=..1] vp.max-age 20
scoreboard players operation @e[tag=gun-init,distance=..1] vp.plane-id = @s vp.plane-id

#tellraw @p [{"nbt":"Tags","entity": "@e[tag=bullet1,distance=..1,limit=1]"}]

#スコア付与

#発射位置に移動
function plane:position/util/calc-triangle-ratio
scoreboard players operation #sin vp.reg1 = #sin vp.return
scoreboard players operation #cos vp.reg1 = #cos vp.return
execute as @e[tag=gun-init,distance=..5] run function plane-data:util/gun-set-position

#音
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data{size:7p7mm} run playsound minecraft:weapon.gun-7p7mm.fire master @a ~ ~ ~ 1 1 1
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data{size:12p7mm} run playsound minecraft:weapon.gun-12p7mm-2.fire master @a ~ ~ ~ 1 1 1
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data{size:13mm} run playsound minecraft:weapon.gun-12p7mm-2.fire master @a ~ ~ ~ 1 1 1
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data{size:20mm} run playsound minecraft:weapon.gun-37mm.fire master @a ~ ~ ~ 1 2 1
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data{size:23mm} run playsound minecraft:weapon.gun-37mm.fire master @a ~ ~ ~ 1 2 1
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data{size:30mm} run playsound minecraft:weapon.gun-37mm.fire master @a ~ ~ ~ 1 1 1
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data{size:37mm} run playsound minecraft:weapon.gun-37mm.fire master @a ~ ~ ~ 1 1 1

#発射炎
#execute as @e[tag=gun-init,distance=..10] at @s run particle minecraft:cloud ^ ^ ^ 0.1 0.1 0.1 0.1 1 force

#cooltime時間設定
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.current-cooltime set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.max-cooltime

#残弾数減算
scoreboard players remove #ammunition vp.reg1 1
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.current-ammunition int 1 run scoreboard players get #ammunition vp.reg1

#終了処理
tag @e[tag=gun-init,distance=..32] remove gun-init


