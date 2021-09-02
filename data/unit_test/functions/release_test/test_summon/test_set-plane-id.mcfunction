execute at @p run function plane-data:a5m/a5m

execute at @p store result score $test ut.result run data get entity @e[tag=plane-root,tag=a5m,distance=..1,sort=nearest,limit=1] UUID[0]

execute if score $test ut.result matches ..-1 run scoreboard players operation $test ut.result *= #-1 vp.Num
execute at @p as @e[tag=plane-root,tag=a5m,distance=..1,sort=nearest,limit=1] store result score $result ut.result if score @s vp.plane-id = $test ut.result

kill @e[tag=plane-root,tag=a5m]