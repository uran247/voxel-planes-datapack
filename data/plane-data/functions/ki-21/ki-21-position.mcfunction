#> plane-data:ki-21/ki-21-position
#
# plane-seatの位置を調整する
#
# @input
#   executer @e[tag=plane-root]
#
# @within plane:position/position

#> private
# @private
    #declare score_holder #summoned-bomb #爆弾の召喚に成功したかどうかのフラグ
    #declare score_holder #plane-id #実行者のplane-id

#seatの位置修正
execute at @s[tag=has-rider] run tp @e[tag=plane-seat,tag=target-parts] ^ ^2 ^-8.2
execute at @s[tag=!has-rider] run tp @e[tag=plane-seat,tag=target-parts] ^-0.5 ^0.5 ^6.5

#爆弾装備タグがついていて爆弾が0なら召喚
execute store result score @s[tag=has-bomb] vp.reg1 if entity @e[tag=target-parts,tag=plane-bomb] 
execute as @s[tag=50kg,tag=has-bomb,scores={vp.ammunition1=20,vp.reg1=0}] store success score #summoned-bomb vp.reg1 run function plane-data:ki-21/summon/ki-21-50kg-bomb
#execute as @s[tag=250kg,tag=has-bomb,scores={vp.ammunition1=4,vp.reg1=0}] store success score #summoned-bomb vp.reg1 run function plane-data:ki-21/summon/ki-21-250kg-bomb
execute if score #summoned-bomb vp.reg1 matches 1.. as @e[tag=ki21,tag=plane-bomb,tag=!dropping,distance=..10] if score @s vp.plane-id = #plane-id vp.reg1 run tag @s add target-parts
execute if score #summoned-bomb vp.reg1 matches 1.. run tag @s add need-calc-offset
scoreboard players set #summoned-bomb vp.reg1 0

