#> util:get-player-keystroke
#
# WASDの押下を取得
# motionの角度とplayerの角度の差を観測することで取得
#
# @input
#   execute @p
#
# @output
#   score #key-storoke vp.return # 0:none 1:W 2:WA 3:A 4:AS 5:S 6:SD 7:D 8:WD
#
# @within function plane:controll/controll
    #declare score_holder #key-storoke

#> private
# @private
    #declare score_holder #motion-angle # motionの角度
    #declare score_holder #player-angle # playerの角度

data modify entity 0-0-0-0-1 Pos set from entity @s Motion
execute as 0-0-0-0-1 at @s facing 0.0 0.0 0.0 facing ^ ^ ^-1 run tp @s ~ ~ ~ ~ ~

execute store result score #motion-angle vp.reg1 run data get entity 0-0-0-0-1 Rotation[0]
execute store result score #player-angle vp.reg1 run data get entity @s Rotation[0]

#tellraw @p [{"nbt":"Pos","entity":"0-0-0-0-1"},{"nbt":"Rotation","entity":"0-0-0-0-1"}]
#tellraw @p [{"score" : {"name":"#motion-angle", "objective":"vp.reg1"}},{"text":" "},{"score" : {"name":"#player-angle", "objective":"vp.reg1"}}]

scoreboard players operation #player-angle vp.reg1 -= #motion-angle vp.reg1
execute if score #player-angle vp.reg1 matches ..0 run scoreboard players add #player-angle vp.reg1 360
execute if score #player-angle vp.reg1 matches 361.. run scoreboard players remove #player-angle vp.reg1 360

#tellraw @p [{"score" : {"name":"#player-angle", "objective":"vp.reg1"}}]

execute as 0-0-0-0-1 at @s positioned 0.0 ~ 0.0 if entity @s[distance=..0.01] run scoreboard players set #key-storoke vp.return 0
execute as 0-0-0-0-1 at @s positioned 0.0 ~ 0.0 unless entity @s[distance=..0.01] if score #player-angle vp.reg1 matches 0..22 run scoreboard players set #key-storoke vp.return 1
execute as 0-0-0-0-1 at @s positioned 0.0 ~ 0.0 unless entity @s[distance=..0.01] if score #player-angle vp.reg1 matches 338..360 run scoreboard players set #key-storoke vp.return 1
execute as 0-0-0-0-1 at @s positioned 0.0 ~ 0.0 unless entity @s[distance=..0.01] if score #player-angle vp.reg1 matches 23..67 run scoreboard players set #key-storoke vp.return 2
execute as 0-0-0-0-1 at @s positioned 0.0 ~ 0.0 unless entity @s[distance=..0.01] if score #player-angle vp.reg1 matches 68..112 run scoreboard players set #key-storoke vp.return 3
execute as 0-0-0-0-1 at @s positioned 0.0 ~ 0.0 unless entity @s[distance=..0.01] if score #player-angle vp.reg1 matches 113..157 run scoreboard players set #key-storoke vp.return 4
execute as 0-0-0-0-1 at @s positioned 0.0 ~ 0.0 unless entity @s[distance=..0.01] if score #player-angle vp.reg1 matches 158..202 run scoreboard players set #key-storoke vp.return 5
execute as 0-0-0-0-1 at @s positioned 0.0 ~ 0.0 unless entity @s[distance=..0.01] if score #player-angle vp.reg1 matches 203..247 run scoreboard players set #key-storoke vp.return 6
execute as 0-0-0-0-1 at @s positioned 0.0 ~ 0.0 unless entity @s[distance=..0.01] if score #player-angle vp.reg1 matches 248..292 run scoreboard players set #key-storoke vp.return 7
execute as 0-0-0-0-1 at @s positioned 0.0 ~ 0.0 unless entity @s[distance=..0.01] if score #player-angle vp.reg1 matches 293..337 run scoreboard players set #key-storoke vp.return 8