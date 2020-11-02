#入力：機体entity
#処理：リロード時間を迎えたEntityの弾薬数をリセット
#帰り値：なし
execute if entity @s[tag=has-weapon1,scores={ammunition1=..0,ammo-reload1=..0}] run scoreboard players operation @s ammunition1 = @s max-ammunition1
execute if entity @s[tag=has-weapon2,scores={ammunition2=..0,ammo-reload2=..0}] run scoreboard players operation @s ammunition2 = @s max-ammunition2
execute if entity @s[tag=has-weapon3,scores={ammunition3=..0,ammo-reload3=..0}] run scoreboard players operation @s ammunition3 = @s max-ammunition3
execute if entity @s[tag=has-weapon4,scores={ammunition4=..0,ammo-reload4=..0}] run scoreboard players operation @s ammunition4 = @s max-ammunition4
execute if entity @s[tag=has-weapon5,scores={ammunition5=..0,ammo-reload5=..0}] run scoreboard players operation @s ammunition5 = @s max-ammunition5
execute if entity @s[tag=has-weapon6,scores={ammunition6=..0,ammo-reload6=..0}] run scoreboard players operation @s ammunition6 = @s max-ammunition6

