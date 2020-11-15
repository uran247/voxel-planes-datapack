#入力：機体enthity
#処理：
#弾薬数が0のEntityにリロード時間をセット
#ammunitionに-1を入れてリロード中とわかるようにする
#帰り値：なし
execute if entity @s[tag=has-weapon1,scores={vp.ammunition1=0}] unless score @s vp.ammo-reload1 matches 1.. run scoreboard players operation @s vp.ammo-reload1 = @s vp.max-ammo-rel1
execute if entity @s[tag=has-weapon2,scores={vp.ammunition2=0}] unless score @s vp.ammo-reload2 matches 1.. run scoreboard players operation @s vp.ammo-reload2 = @s vp.max-ammo-rel2
execute if entity @s[tag=has-weapon3,scores={vp.ammunition3=0}] unless score @s vp.ammo-reload3 matches 1.. run scoreboard players operation @s vp.ammo-reload3 = @s vp.max-ammo-rel3
execute if entity @s[tag=has-weapon4,scores={vp.ammunition4=0}] unless score @s vp.ammo-reload4 matches 1.. run scoreboard players operation @s vp.ammo-reload4 = @s vp.max-ammo-rel4
execute if entity @s[tag=has-weapon5,scores={vp.ammunition5=0}] unless score @s vp.ammo-reload5 matches 1.. run scoreboard players operation @s vp.ammo-reload5 = @s vp.max-ammo-rel5
execute if entity @s[tag=has-weapon6,scores={vp.ammunition6=0}] unless score @s vp.ammo-reload6 matches 1.. run scoreboard players operation @s vp.ammo-reload6 = @s vp.max-ammo-rel6
execute if entity @s[tag=has-weapon7,scores={vp.ammunition7=0}] unless score @s vp.ammo-reload7 matches 1.. run scoreboard players operation @s vp.ammo-reload7 = @s vp.max-ammo-rel7

execute if entity @s[tag=has-weapon1,scores={vp.ammunition1=0}] if score @s vp.ammo-reload1 matches 1.. run scoreboard players set @s vp.ammunition1 -1
execute if entity @s[tag=has-weapon2,scores={vp.ammunition2=0}] if score @s vp.ammo-reload2 matches 1.. run scoreboard players set @s vp.ammunition2 -1
execute if entity @s[tag=has-weapon3,scores={vp.ammunition3=0}] if score @s vp.ammo-reload3 matches 1.. run scoreboard players set @s vp.ammunition3 -1
execute if entity @s[tag=has-weapon4,scores={vp.ammunition4=0}] if score @s vp.ammo-reload4 matches 1.. run scoreboard players set @s vp.ammunition4 -1
execute if entity @s[tag=has-weapon5,scores={vp.ammunition5=0}] if score @s vp.ammo-reload5 matches 1.. run scoreboard players set @s vp.ammunition5 -1
execute if entity @s[tag=has-weapon6,scores={vp.ammunition6=0}] if score @s vp.ammo-reload6 matches 1.. run scoreboard players set @s vp.ammunition6 -1
execute if entity @s[tag=has-weapon7,scores={vp.ammunition7=0}] if score @s vp.ammo-reload7 matches 1.. run scoreboard players set @s vp.ammunition7 -1
