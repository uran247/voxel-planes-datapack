#角度スコアを航空機に反映する、パーツの位置を調整する
#実行方法:execute as @e[tag=ki43-root] at @s run function plane:position/ki43-position
#実行者：機体　実行位置：機体

#seatの位置修正
execute at @s[tag=has-rider] run tp @e[tag=plane-seat,tag=target-parts] ^ ^ ^-3.6
execute at @s[tag=!has-rider] run tp @e[tag=plane-seat,tag=target-parts] ^ ^-0.5 ^-0.5
