#> plane:controll/weapon/change-current-weapon
#
# 現在武器を変更
# 利用可能タグ controll-target:機体
# plane-weaponを+1、現在のplane-weaponの番号の武器を使用可能か確認、不可だったら更に+1、最大数をオーバーしたら1に戻す
#
# @input
#   executer @e[tag=plane-root]
#
# @within plane:controll/weapon

#> private
# @private
    #declare score_holder #weapon-types #飛行機の選択可能武器フラグを示す


scoreboard players add @s vp.curr-weapon 1

execute if score @s vp.curr-weapon matches 1 run scoreboard players operation #weapon-types vp.reg1 = @s vp.weapon-types
execute if score @s vp.curr-weapon matches 1 run scoreboard players operation #weapon-types vp.reg1 %= #2 vp.Num
execute if score @s vp.curr-weapon matches 1 if score #weapon-types vp.reg1 matches 1.. run scoreboard players add @s vp.curr-weapon 1

execute if score @s vp.curr-weapon matches 2 run scoreboard players operation #weapon-types vp.reg1 = @s vp.weapon-types
execute if score @s vp.curr-weapon matches 2 run scoreboard players operation #weapon-types vp.reg1 %= #3 vp.Num
execute if score @s vp.curr-weapon matches 2 if score #weapon-types vp.reg1 matches 1.. run scoreboard players add @s vp.curr-weapon 1

execute if score @s vp.curr-weapon matches 3 run scoreboard players operation #weapon-types vp.reg1 = @s vp.weapon-types
execute if score @s vp.curr-weapon matches 3 run scoreboard players operation #weapon-types vp.reg1 %= #5 vp.Num
execute if score @s vp.curr-weapon matches 3 if score #weapon-types vp.reg1 matches 1.. run scoreboard players add @s vp.curr-weapon 1

execute if score @s vp.curr-weapon matches 4 run scoreboard players operation #weapon-types vp.reg1 = @s vp.weapon-types
execute if score @s vp.curr-weapon matches 4 run scoreboard players operation #weapon-types vp.reg1 %= #7 vp.Num
execute if score @s vp.curr-weapon matches 4 if score #weapon-types vp.reg1 matches 1.. run scoreboard players add @s vp.curr-weapon 1

execute if score @s vp.curr-weapon matches 5 run scoreboard players operation #weapon-types vp.reg1 = @s vp.weapon-types
execute if score @s vp.curr-weapon matches 5 run scoreboard players operation #weapon-types vp.reg1 %= #11 vp.Num
execute if score @s vp.curr-weapon matches 5 if score #weapon-types vp.reg1 matches 1.. run scoreboard players add @s vp.curr-weapon 1

execute if score @s vp.curr-weapon matches 6 run scoreboard players operation #weapon-types vp.reg1 = @s vp.weapon-types
execute if score @s vp.curr-weapon matches 6 run scoreboard players operation #weapon-types vp.reg1 %= #13 vp.Num
execute if score @s vp.curr-weapon matches 6 if score #weapon-types vp.reg1 matches 1.. run scoreboard players add @s vp.curr-weapon 1

execute if score @s vp.curr-weapon matches 7 run scoreboard players operation #weapon-types vp.reg1 = @s vp.weapon-types
execute if score @s vp.curr-weapon matches 7 run scoreboard players operation #weapon-types vp.reg1 %= #17 vp.Num
execute if score @s vp.curr-weapon matches 7 if score #weapon-types vp.reg1 matches 1.. run scoreboard players add @s vp.curr-weapon 1

execute if score @s vp.curr-weapon matches 8 run scoreboard players operation #weapon-types vp.reg1 = @s vp.weapon-types
execute if score @s vp.curr-weapon matches 8 run scoreboard players operation #weapon-types vp.reg1 %= #19 vp.Num
execute if score @s vp.curr-weapon matches 8 if score #weapon-types vp.reg1 matches 1.. run scoreboard players add @s vp.curr-weapon 1

execute if score @s vp.curr-weapon matches 9 run scoreboard players operation #weapon-types vp.reg1 = @s vp.weapon-types
execute if score @s vp.curr-weapon matches 9 run scoreboard players operation #weapon-types vp.reg1 %= #23 vp.Num
execute if score @s vp.curr-weapon matches 9 if score #weapon-types vp.reg1 matches 1.. run scoreboard players set @s vp.curr-weapon 1
