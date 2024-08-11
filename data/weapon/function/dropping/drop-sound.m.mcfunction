#> weapon:dropping/drop-sound.m
#
# $(name)がデータに無いなら音を鳴らして$(name)を登録
#
# @input
#   as @p
#   ohmydat: @e[tag=dropping]
#   macro: $(name): player name
#
# @within function weapon:dropping/drop-sound

# 登録済みならreturn
$execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].data.heard-sound.$(name) run return 0

# メイン処理
execute at @s run playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 1.0 1.7 1.0
execute at @s run playsound minecraft:entity.vex.hurt master @a ~ ~ ~ 1.0 0.5 0.0
$data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].data.heard-sound.$(name) set value 1