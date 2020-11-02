#角度スコアを航空機に反映する、パーツの位置を調整する
#実行方法:execute as @e[tag=a5m-root] at @s run function plane-data:a5m/a5m-position
#実行者：機体　実行位置：機体

#seatの位置修正
execute at @s[tag=has-rider] run tp @e[tag=plane-seat,tag=target-parts] ^ ^ ^-2.5
execute at @s[tag=!has-rider] run tp @e[tag=plane-seat,tag=target-parts] ^ ^-0.7 ^0.8
