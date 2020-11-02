#入力：機体enthity
#処理：
#弾薬数が0のEntityにリロード時間をセット
#ammunitionに-1を入れてリロード中とわかるようにする
#帰り値：なし
execute if entity @s[tag=has-weapon1,scores={ammunition1=0}] unless score @s ammo-reload1 matches 1.. run scoreboard players operation @s ammo-reload1 = @s max-ammo-reload1
execute if entity @s[tag=has-weapon2,scores={ammunition2=0}] unless score @s ammo-reload2 matches 1.. run scoreboard players operation @s ammo-reload2 = @s max-ammo-reload2
execute if entity @s[tag=has-weapon3,scores={ammunition3=0}] unless score @s ammo-reload3 matches 1.. run scoreboard players operation @s ammo-reload3 = @s max-ammo-reload3
execute if entity @s[tag=has-weapon4,scores={ammunition4=0}] unless score @s ammo-reload4 matches 1.. run scoreboard players operation @s ammo-reload4 = @s max-ammo-reload4
execute if entity @s[tag=has-weapon5,scores={ammunition5=0}] unless score @s ammo-reload5 matches 1.. run scoreboard players operation @s ammo-reload5 = @s max-ammo-reload5
execute if entity @s[tag=has-weapon6,scores={ammunition6=0}] unless score @s ammo-reload6 matches 1.. run scoreboard players operation @s ammo-reload6 = @s max-ammo-reload6

execute if entity @s[tag=has-weapon1,scores={ammunition1=0}] if score @s ammo-reload1 matches 1.. run scoreboard players set @s ammunition1 -1
execute if entity @s[tag=has-weapon2,scores={ammunition2=0}] if score @s ammo-reload2 matches 1.. run scoreboard players set @s ammunition2 -1
execute if entity @s[tag=has-weapon3,scores={ammunition3=0}] if score @s ammo-reload3 matches 1.. run scoreboard players set @s ammunition3 -1
execute if entity @s[tag=has-weapon4,scores={ammunition4=0}] if score @s ammo-reload4 matches 1.. run scoreboard players set @s ammunition4 -1
execute if entity @s[tag=has-weapon5,scores={ammunition5=0}] if score @s ammo-reload5 matches 1.. run scoreboard players set @s ammunition5 -1
execute if entity @s[tag=has-weapon6,scores={ammunition6=0}] if score @s ammo-reload6 matches 1.. run scoreboard players set @s ammunition6 -1
