#入力：機体entity
#処理：リロード時間を迎えたEntityの弾薬数をリセット
#帰り値：なし
execute if entity @s[tag=has-weapon1,scores={vp.ammunition1=..0,vp.ammo-reload1=..0}] run scoreboard players operation @s vp.ammunition1 = @s vp.max-ammo1
execute if entity @s[tag=has-weapon2,scores={vp.ammunition2=..0,vp.ammo-reload2=..0}] run scoreboard players operation @s vp.ammunition2 = @s vp.max-ammo2
execute if entity @s[tag=has-weapon3,scores={vp.ammunition3=..0,vp.ammo-reload3=..0}] run scoreboard players operation @s vp.ammunition3 = @s vp.max-ammo3
execute if entity @s[tag=has-weapon4,scores={vp.ammunition4=..0,vp.ammo-reload4=..0}] run scoreboard players operation @s vp.ammunition4 = @s vp.max-ammo4
execute if entity @s[tag=has-weapon5,scores={vp.ammunition5=..0,vp.ammo-reload5=..0}] run scoreboard players operation @s vp.ammunition5 = @s vp.max-ammo5
execute if entity @s[tag=has-weapon6,scores={vp.ammunition6=..0,vp.ammo-reload6=..0}] run scoreboard players operation @s vp.ammunition6 = @s vp.max-ammo6
execute if entity @s[tag=has-weapon7,scores={vp.ammunition7=..0,vp.ammo-reload7=..0}] run scoreboard players operation @s vp.ammunition7 = @s vp.max-ammo7

