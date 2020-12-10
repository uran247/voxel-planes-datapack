#武器を使用　controll:weapon経由で実行
#実行者：機体

#選択に応じて武器ファンクション実行
execute if entity @p[tag=weapon-user,scores={vp.rightClick=1..}] if entity @s[scores={vp.plane-weapon=1,vp.w1-reload=..0,vp.ammunition1=1..}] at @s run function plane-data:a6m2/weapon/20mm
execute if entity @p[tag=weapon-user,scores={vp.rightClick=1..}] if entity @s[scores={vp.plane-weapon=2,vp.w2-reload=..0,vp.ammunition2=1..}] at @s run function plane-data:a6m2/weapon/7p7mm
execute if entity @p[tag=weapon-user,scores={vp.rightClick=1..}] if entity @s[scores={vp.plane-weapon=3,vp.w3-reload=..0,vp.ammunition3=1..},tag=flying] at @s run function plane-data:a6m2/weapon/bomb

#右クリック無効条件
execute if entity @p[tag=weapon-user,scores={vp.rightClick=1..}] if entity @s[scores={vp.plane-weapon=1,vp.w1-reload=..0,vp.ammunition1=..0}] at @s run scoreboard players set @p[tag=weapon-user,scores={vp.rightClick=1..}] vp.rightClick 0
execute if entity @p[tag=weapon-user,scores={vp.rightClick=1..}] if entity @s[scores={vp.plane-weapon=2,vp.w2-reload=..0,vp.ammunition2=..0}] at @s run scoreboard players set @p[tag=weapon-user,scores={vp.rightClick=1..}] vp.rightClick 0
execute if entity @p[tag=weapon-user,scores={vp.rightClick=1..}] if entity @s[scores={vp.plane-weapon=3}] at @s run scoreboard players set @p[tag=weapon-user,scores={vp.rightClick=1..}] vp.rightClick 0

