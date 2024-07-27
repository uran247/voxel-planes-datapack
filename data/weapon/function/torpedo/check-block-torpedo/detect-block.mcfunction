#> weapon:torpedo/check-block-torpedo/detect-block
#
# 
#
# @within function weapon:torpedo/check-block-torpedo/step7

execute positioned ^ ^ ^1000 if entity @s[distance=..1000] positioned ^ ^ ^-1000 unless block ~ ~ ~ #tags:torpedo-passable as 0-0-0-0-9 run tp @s[distance=..0.1,x=0,y=1,z=0] ~ ~ ~