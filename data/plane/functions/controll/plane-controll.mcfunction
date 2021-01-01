#> plane:controll/plane-controll
#
# プレイヤーによる飛行機の移動、武器使用操作の入力受付処理に関することをやる
#
# @input
#   entity @p
#   position @e[tag=plane-root]
#
# @within function plane:controll/controll

#移動操作
execute at @e[tag=controll-target,tag=!flying,distance=..1,sort=nearest,limit=1] run function plane:controll/rolling
execute at @e[tag=controll-target,tag=flying,distance=..1,sort=nearest,limit=1] run function plane:controll/flying

#武器使用
execute at @e[tag=controll-target,distance=..1,sort=nearest,limit=1] run function plane:controll/weapon
