#飛行機の旋回と武器使用処理に関することをやる
#入力：pos plane-root

#移動操作
execute at @e[tag=controll-target,tag=!flying,distance=..1,sort=nearest,limit=1] run function plane:controll/rolling
execute at @e[tag=controll-target,tag=flying,distance=..1,sort=nearest,limit=1] run function plane:controll/flying

#武器使用
execute at @e[tag=controll-target,distance=..1,sort=nearest,limit=1] run function plane:controll/weapon
