#> plane:weapon/util/display-aim
#
# @input
#   executer @e[tag=plane-root]
#
# @within function plane:weapon/weapon-manager

#> private
# @private
    #declare score_holder #distance
    #declare score_holder #horizontal-speed
    #declare score_holder #time
    #declare score_holder #speedY

#着弾までの時間計算
scoreboard players operation #speedY vp.input = @s vp.speedY
scoreboard players operation #speedY vp.input *= @s vp.speed
scoreboard players operation #speedY vp.input /= #-10000 vp.Num
scoreboard players operation #altitude vp.input = @s vp.PosY
function plane:weapon/util/get-landing-time

#水平方向の速度計算
function plane:weapon/util/get-horizontal-speed
#tellraw @p [{"text": "time:"},{"score" : {"name":"#time", "objective":"vp.return"}},{"text": "speed:"},{"score" : {"name":"#horizontal-speed", "objective":"vp.return"}}]

#着弾までの移動距離計算
scoreboard players operation #distance vp.reg1 = #horizontal-speed vp.return
scoreboard players operation #distance vp.reg1 *= #time vp.return

#dummyエンティティの角度計算
data modify storage minecraft:plane-datapack temporary.Pos set value [0.0d,0.0d,0.0d]
execute store result storage minecraft:plane-datapack temporary.Pos[1] double 0.000001 run scoreboard players get @s vp.PosY
execute store result storage minecraft:plane-datapack temporary.Pos[0] double 0.000001 run scoreboard players get #distance vp.reg1
data modify entity 0-0-0-0-a Pos set from storage minecraft:plane-datapack temporary.Pos
execute at 0-0-0-0-a run tp 0-0-0-0-a ~ ~ ~ facing 0.0 0.0 0.0
execute store result entity 0-0-0-0-a Rotation[0] float 0.01 run scoreboard players get @s vp.AngY

#tellraw @p [{"text": "time:"},{"score" : {"name":"#time", "objective":"vp.return"}},{"text": "speed:"},{"score" : {"name":"#horizontal-speed", "objective":"vp.return"}}]
#tellraw @p [{"nbt":"Pos","entity":"0-0-0-0-a"}] 

execute if entity @s[tag=normal-bomber] at @s run tp 0-0-0-0-a ~ ~ ~
execute if entity @s[tag=dive-bomber] at @s run tp 0-0-0-0-a ~ ~ ~
execute if entity @s[tag=normal-bomber] run function plane:weapon/util/bomb-aim
execute if entity @s[tag=dive-bomber] run function plane:weapon/util/bomb-aim
