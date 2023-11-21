#> plane:weapon/use-weapon/tmp
#
# @input
#   #sin vp.reg1　#cos vp.reg1 entity: @e[tag=gun-init] position: @e[tag=plane-root]
# 
# 処理：銃弾の位置移動、向き変更、速度スコア化
#
# @within function plane:weapon/use-weapon/use-gun

#発射位置に移動
function plane:position/util/calc-displacement
function plane:position/move-to-offset

#向きを機体方向256ブロック先に向ける
execute positioned ^ ^ ^256 facing entity @s eyes positioned as @s run tp @s ~ ~ ~ facing ^ ^ ^-1

#x,y,z方向の速度スコア化
function math:vector
scoreboard players operation @s vp.speedX *= @s vp.speed
scoreboard players operation @s vp.speedY *= @s vp.speed
scoreboard players operation @s vp.speedZ *= @s vp.speed
scoreboard players operation @s vp.speedX /= #10 vp.Num
scoreboard players operation @s vp.speedY /= #10 vp.Num
scoreboard players operation @s vp.speedZ /= #10 vp.Num
