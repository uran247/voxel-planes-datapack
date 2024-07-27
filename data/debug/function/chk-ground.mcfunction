#> debug:chk-ground
#
# 
#

tp 0-0-0-0-7 0.0 0.0 0.0 0 -90
tp 0-0-0-0-8 0.0 0.01 0.0 0 90

tag 0-0-0-0-7 add ground-check
tag 0-0-0-0-8 add ground-check

tp @e[type=armor_stand,tag=test] 0.0 0.0 0.0
scoreboard players set @e[type=armor_stand,tag=test] vp.reg1 0

execute rotated as 0-0-0-0-8 positioned ^ ^ ^256 rotated as @e[tag=ground-check,distance=..0.1,x=0,y=0,z=0,sort=nearest] positioned ^ ^ ^128 rotated as @e[tag=ground-check,distance=..0.1,x=0,y=0,z=0,sort=nearest] positioned ^ ^ ^64 rotated as @e[tag=ground-check,distance=..0.1,x=0,y=0,z=0,sort=nearest] positioned ^ ^ ^32 rotated as @e[tag=ground-check,distance=..0.1,x=0,y=0,z=0,sort=nearest] positioned ^ ^ ^16 rotated as @e[tag=ground-check,distance=..0.1,x=0,y=0,z=0,sort=nearest] positioned ^ ^ ^8 rotated as @e[tag=ground-check,distance=..0.1,x=0,y=0,z=0,sort=nearest] positioned ^ ^ ^4 rotated as @e[tag=ground-check,distance=..0.1,x=0,y=0,z=0,sort=nearest] positioned ^ ^ ^2 rotated as @e[tag=ground-check,distance=..0.1,x=0,y=0,z=0,sort=nearest] positioned ^ ^ ^1 rotated as @e[tag=ground-check,distance=..0.1,x=0,y=0,z=0,sort=nearest] positioned ^ ^ ^0.5 unless block ~ ~ ~ #tags:torpedo-passable run tp @e[type=armor_stand,tag=test,distance=..0.1,x=0,y=0,z=0] ~ ~ ~

execute store result score #altitude vp.reg1 run data get entity @s Pos[1]
execute store result score #ground-y vp.reg1 run data get entity @e[type=armor_stand,tag=test,limit=1] Pos[1]

scoreboard players operation #altitude vp.reg1 -= #ground-y vp.reg1


scoreboard players reset #ground-y vp.reg1 
tag 0-0-0-0-7 remove ground-check
tag 0-0-0-0-8 remove ground-check


scoreboard players set #droptime vp.reg1 0
scoreboard players set #dropspeed vp.reg1 50
scoreboard players operation #altitude vp.reg1 *= #100 vp.Num

function debug:calc-droptime

tellraw @p [{"score":{"name": "#droptime","objective": "vp.reg1"}}]

scoreboard players reset #altitude vp.reg1
