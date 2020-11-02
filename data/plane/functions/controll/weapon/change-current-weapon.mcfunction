#入力　entity: plane-root
#処理　現在武器を変更
#      plane-weaponを+1、現在のplane-weaponの番号の武器を使用可能か確認、不可だったら更に+1、最大数をオーバーしたら1に戻す

scoreboard players add @s plane-weapon 1

execute if score @s plane-weapon matches 1 run scoreboard players operation #weapon-types reg1 = @s weapon-types
execute if score @s plane-weapon matches 1 run scoreboard players operation #weapon-types reg1 %= #2 Num
execute if score @s plane-weapon matches 1 if score #weapon-types reg1 matches 1.. run scoreboard players add @s plane-weapon 1

execute if score @s plane-weapon matches 2 run scoreboard players operation #weapon-types reg1 = @s weapon-types
execute if score @s plane-weapon matches 2 run scoreboard players operation #weapon-types reg1 %= #3 Num
execute if score @s plane-weapon matches 2 if score #weapon-types reg1 matches 1.. run scoreboard players add @s plane-weapon 1

execute if score @s plane-weapon matches 3 run scoreboard players operation #weapon-types reg1 = @s weapon-types
execute if score @s plane-weapon matches 3 run scoreboard players operation #weapon-types reg1 %= #5 Num
execute if score @s plane-weapon matches 3 if score #weapon-types reg1 matches 1.. run scoreboard players add @s plane-weapon 1

execute if score @s plane-weapon matches 4 run scoreboard players operation #weapon-types reg1 = @s weapon-types
execute if score @s plane-weapon matches 4 run scoreboard players operation #weapon-types reg1 %= #7 Num
execute if score @s plane-weapon matches 4 if score #weapon-types reg1 matches 1.. run scoreboard players add @s plane-weapon 1

execute if score @s plane-weapon matches 5 run scoreboard players operation #weapon-types reg1 = @s weapon-types
execute if score @s plane-weapon matches 5 run scoreboard players operation #weapon-types reg1 %= #11 Num
execute if score @s plane-weapon matches 5 if score #weapon-types reg1 matches 1.. run scoreboard players add @s plane-weapon 1

execute if score @s plane-weapon matches 6 run scoreboard players operation #weapon-types reg1 = @s weapon-types
execute if score @s plane-weapon matches 6 run scoreboard players operation #weapon-types reg1 %= #13 Num
execute if score @s plane-weapon matches 6 if score #weapon-types reg1 matches 1.. run scoreboard players add @s plane-weapon 1

execute if score @s plane-weapon matches 7 run scoreboard players operation #weapon-types reg1 = @s weapon-types
execute if score @s plane-weapon matches 7 run scoreboard players operation #weapon-types reg1 %= #17 Num
execute if score @s plane-weapon matches 7 if score #weapon-types reg1 matches 1.. run scoreboard players add @s plane-weapon 1

execute if score @s plane-weapon matches 8 run scoreboard players operation #weapon-types reg1 = @s weapon-types
execute if score @s plane-weapon matches 8 run scoreboard players operation #weapon-types reg1 %= #19 Num
execute if score @s plane-weapon matches 8 if score #weapon-types reg1 matches 1.. run scoreboard players add @s plane-weapon 1

execute if score @s plane-weapon matches 9 run scoreboard players operation #weapon-types reg1 = @s weapon-types
execute if score @s plane-weapon matches 9 run scoreboard players operation #weapon-types reg1 %= #23 Num
execute if score @s plane-weapon matches 9 if score #weapon-types reg1 matches 1.. run scoreboard players set @s plane-weapon 1
