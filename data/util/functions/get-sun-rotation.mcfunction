#> util:get-sun-rotation
#
# 太陽の向いてる方向を取得する
# y=-0.015*daytyme-90
# x=-0.013*daytyme-12(-1000<=daytime<=6000) x=0.013*daytyme-168(6000<=daytime<=13000)
#
# @output
#   storage voxel-planes:return sun-rotation[y,x] #太陽の向き
#
# @public

# @private
    #declare score_holder #daytime
    #declare score_holder #sun-y
    #declare score_holder #sun-x

# storageリセット
data remove storage voxel-planes:return sun-rotation

# 太陽の向き計算
execute store result score #daytime vp.reg1 run time query daytime

execute if score #daytime vp.reg1 matches -1000..6000 run scoreboard players set #sun-y vp.reg1 -90000
execute if score #daytime vp.reg1 matches 6001..13000 run scoreboard players set #sun-y vp.reg1 90000

execute if score #daytime vp.reg1 matches -1000..6000 run scoreboard players set #sun-x vp.reg1 -13
execute if score #daytime vp.reg1 matches -1000..6000 run scoreboard players operation #sun-x vp.reg1 *= #daytime vp.reg1
execute if score #daytime vp.reg1 matches -1000..6000 run scoreboard players remove #sun-x vp.reg1 12000

execute if score #daytime vp.reg1 matches 6001..13000 run scoreboard players set #sun-x vp.reg1 13
execute if score #daytime vp.reg1 matches 6001..13000 run scoreboard players operation #sun-x vp.reg1 *= #daytime vp.reg1
execute if score #daytime vp.reg1 matches 6001..13000 run scoreboard players remove #sun-x vp.reg1 168000

# 返り値
execute if score #daytime vp.reg1 matches -1000..13000 run data modify storage voxel-planes:return sun-rotation set value [0f,0f]
execute if score #daytime vp.reg1 matches -1000..13000 store result storage voxel-planes:return sun-rotation[0] float 0.001 run scoreboard players get #sun-y vp.reg1
execute if score #daytime vp.reg1 matches -1000..13000 store result storage voxel-planes:return sun-rotation[1] float 0.001 run scoreboard players get #sun-x vp.reg1

#score リセット
scoreboard players reset #daytime vp.reg1
scoreboard players reset #sun-x vp.reg1
scoreboard players reset #sun-y vp.reg1
