#> plane:position/util/stable-display
#
# モデルの表示安定のため毎tick微妙にZを変える
#
# @input
#   executer @e[tag=plane-root,tag=angle-not-changed]
#
# @within plane:position/position
# @private
    #declare score_holder #salt #Z角に付加するソルト
    #declare score_holder #ang-z #モデルのロール角度

# 0-1の範囲でsalt生成
scoreboard players operation #salt vp.reg1 = #gtime vp.reg1
scoreboard players operation #salt vp.reg1 %= #2 vp.Num

# #ang-z+saltを代入
scoreboard players operation #ang-z vp.reg1 = @s vp.AngZ
scoreboard players remove #ang-z vp.reg1 9000
scoreboard players operation #ang-z vp.reg1 += #salt vp.reg1

execute as @e[tag=has-model,tag=target-parts,distance=..10] store result entity @s Pose.RightArm[1] float 0.01 run scoreboard players get #ang-z vp.reg1
