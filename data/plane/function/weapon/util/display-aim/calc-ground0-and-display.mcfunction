#> plane:weapon/util/display-aim/calc-ground0-and-display
#
# 着弾位置を計算してその位置を示すパーティクルを表示
# block-checkerを実行者にしておかないと行方不明になるため、実行者をblock-checkerにして動かす処理はこっちでやる
#
# @input
#   as @e[tag=block-checker,distance=..1,x=0,y=1,z=0,limit=1]
#   at @e[tag=plane-root]
#
# @within
#   function plane:weapon/weapon-manager
#   function plane:weapon/util/display-aim/**

#> private
# @private
    #declare score_holder #distance
    #declare score_holder #horizontal-speed
    #declare score_holder #time
    #declare score_holder #speedY
    #declare score_holder #speed-x
    #declare score_holder #speed-z

#> calc-aim
# @within
#   function plane:weapon/util/display-aim/**
#   function plane:weapon/util/check-ground
#   function plane:weapon/util/calc-droptime
#   function plane:weapon/util/calc-droptime-recursion
    #declare score_holder #altitude #地面までの距離[m]
    #declare score_holder #drop-time
    #declare score_holder #drop-speed

# 地面までの距離計算
function plane:weapon/util/check-ground
    #tellraw @p [{"score" : {"name":"#drop-time", "objective":"vp.return"}}]

# 着弾までの時間計算
function plane:weapon/util/calc-droptime
    #tellraw @p [{"score" : {"name":"#drop-time", "objective":"vp.return"}}]

# 着弾位置計算
function plane:weapon/util/calc-droppoint

#execute at @s run particle electric_spark ~ ~2 ~ 5 0 0.01 0 500 force @p
#execute at @s run particle electric_spark ~ ~2 ~ 0.01 0 5 0 500 force @p

# パーティクル表示
execute at @p[tag=plane-rider] facing entity @s eyes positioned ^ ^ ^30 run particle electric_spark ~ ~2 ~ 3 0 0.01 0 500 force @p[tag=plane-pilot]
execute at @p[tag=plane-rider] facing entity @s eyes positioned ^ ^ ^30 run particle electric_spark ~ ~2 ~ 0.01 0 3 0 500 force @p[tag=plane-pilot]

# reset
scoreboard players reset #altitude vp.return
scoreboard players reset #drop-time vp.return
scoreboard players reset #speed-x
scoreboard players reset #speed-z

tp @s 0.0 1.0 0.0