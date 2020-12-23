#入力：機体enthity
#処理：
#弾薬数が0のEntityにリロード時間をセット
#ammunitionに-1を入れてリロード中とわかるようにする
#帰り値：なし
execute if entity @s[tag=has-weapon1,scores={vp.ammunition1=0}] unless score @s vp.w1-reload matches 1.. run scoreboard players operation @s vp.w1-reload = @s vp.max-w1-reload
execute if entity @s[tag=has-weapon2,scores={vp.ammunition2=0}] unless score @s vp.w2-reload matches 1.. run scoreboard players operation @s vp.w2-reload = @s vp.max-w2-reload
execute if entity @s[tag=has-weapon3,scores={vp.ammunition3=0}] unless score @s vp.w3-reload matches 1.. run scoreboard players operation @s vp.w3-reload = @s vp.max-w3-reload
execute if entity @s[tag=has-weapon4,scores={vp.ammunition4=0}] unless score @s vp.w4-reload matches 1.. run scoreboard players operation @s vp.w4-reload = @s vp.max-w4-reload
execute if entity @s[tag=has-weapon5,scores={vp.ammunition5=0}] unless score @s vp.w5-reload matches 1.. run scoreboard players operation @s vp.w5-reload = @s vp.max-w5-reload
execute if entity @s[tag=has-weapon6,scores={vp.ammunition6=0}] unless score @s vp.w6-reload matches 1.. run scoreboard players operation @s vp.w6-reload = @s vp.max-w6-reload
execute if entity @s[tag=has-weapon7,scores={vp.ammunition7=0}] unless score @s vp.w7-reload matches 1.. run scoreboard players operation @s vp.w7-reload = @s vp.max-w7-reload

execute if entity @s[tag=has-weapon1,scores={vp.ammunition1=0}] if score @s vp.w1-reload matches 1.. run scoreboard players set @s vp.ammunition1 -1
execute if entity @s[tag=has-weapon2,scores={vp.ammunition2=0}] if score @s vp.w2-reload matches 1.. run scoreboard players set @s vp.ammunition2 -1
execute if entity @s[tag=has-weapon3,scores={vp.ammunition3=0}] if score @s vp.w3-reload matches 1.. run scoreboard players set @s vp.ammunition3 -1
execute if entity @s[tag=has-weapon4,scores={vp.ammunition4=0}] if score @s vp.w4-reload matches 1.. run scoreboard players set @s vp.ammunition4 -1
execute if entity @s[tag=has-weapon5,scores={vp.ammunition5=0}] if score @s vp.w5-reload matches 1.. run scoreboard players set @s vp.ammunition5 -1
execute if entity @s[tag=has-weapon6,scores={vp.ammunition6=0}] if score @s vp.w6-reload matches 1.. run scoreboard players set @s vp.ammunition6 -1
execute if entity @s[tag=has-weapon7,scores={vp.ammunition7=0}] if score @s vp.w7-reload matches 1.. run scoreboard players set @s vp.ammunition7 -1
