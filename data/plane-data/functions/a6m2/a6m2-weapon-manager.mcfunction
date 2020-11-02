#武器を使用　controll:weapon経由で実行
#実行者：機体

#選択に応じて武器ファンクション実行
execute if entity @p[tag=weapon-user,scores={rightClick=1..}] if entity @s[scores={plane-weapon=1,w1-reload=..0,ammunition1=1..}] at @s run function plane-data:a6m2/weapon/20mm
execute if entity @p[tag=weapon-user,scores={rightClick=1..}] if entity @s[scores={plane-weapon=2,w2-reload=..0,ammunition2=1..}] at @s run function plane-data:a6m2/weapon/7p7mm
execute if entity @p[tag=weapon-user,scores={rightClick=1..}] if entity @s[scores={plane-weapon=3,w3-reload=..0,ammunition3=1..}] at @s run function plane-data:a6m2/weapon/bomb

execute if entity @p[tag=weapon-user,scores={rightClick=1..}] if entity @s[scores={plane-weapon=1,w1-reload=..0,ammunition1=..0}] at @s run scoreboard players set @p[tag=weapon-user,scores={rightClick=1..}] rightClick 0
execute if entity @p[tag=weapon-user,scores={rightClick=1..}] if entity @s[scores={plane-weapon=2,w2-reload=..0,ammunition2=..0}] at @s run scoreboard players set @p[tag=weapon-user,scores={rightClick=1..}] rightClick 0
execute if entity @p[tag=weapon-user,scores={rightClick=1..}] if entity @s[scores={plane-weapon=3,ammunition3=..0}] at @s run scoreboard players set @p[tag=weapon-user,scores={rightClick=1..}] rightClick 0

#reload時間減算
function plane:weapon/util/cooltime-weapon

#残弾数が0になったら補充時間をセット
execute unless entity @s[scores={ammunition1=1..,ammunition2=1..,ammunition3=1..}] as @s run function plane:weapon/util/set-reloadtime

#execute if entity @s[scores={ammunition1=..0,ammo-reload1=..0}] run scoreboard players set @s ammunition1 100
execute unless entity @s[scores={ammunition1=1..,ammunition2=1..,ammunition3=1..}] unless entity @s[scores={ammo-reload1=1..,ammo-reload2=1..,ammo-reload3=1..}] as @s run function plane:weapon/util/reset-ammunition
