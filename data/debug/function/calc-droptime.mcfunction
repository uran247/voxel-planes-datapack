#> debug:calc-droptime
#
# 
#
# @within
#   function debug:chk-ground
#   function debug:calc-droptime

scoreboard players add #droptime vp.reg1 1
scoreboard players add #dropspeed vp.reg1 1

scoreboard players operation #altitude vp.reg1 -= #dropspeed vp.reg1

execute if score #altitude vp.reg1 matches 0.. run function debug:calc-droptime
