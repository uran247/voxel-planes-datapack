scoreboard players add $fractal_loop vp.reg1 1

execute positioned ^ ^ ^0.5 run particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force
execute positioned ^ ^ ^1 run particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force
execute positioned ^ ^ ^1.5 run particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force
execute positioned ^ ^ ^2 run particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force
execute positioned ^ ^ ^2.5 run particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force
execute positioned ^ ^ ^3 run particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force
execute positioned ^ ^ ^3.5 run particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force
execute positioned ^ ^ ^4 run particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force
execute positioned ^ ^ ^4.5 run particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force
execute positioned ^ ^ ^5 run particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force

tp 0-0-0-0-2 ~ ~ ~ ~15 ~
tp 0-0-0-0-1 ~ ~ ~ ~-45 ~

execute if score $fractal_loop vp.reg1 <= $fractal_loop_max vp.reg1 positioned ^ ^ ^5 rotated as @e[tag=fractal,limit=2] run function debug:fractal_particle

scoreboard players remove $fractal_loop vp.reg1 1
