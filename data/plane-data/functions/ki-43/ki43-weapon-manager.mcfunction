#武器を使用　controll:weapon経由で実行
#実行者：機体

#選択に応じて武器ファンクション実行
execute if entity @p[tag=weapon-user,scores={vp.rightClick=1..}] if entity @s[tag=12p7mm,scores={vp.plane-weapon=1,vp.w1-cooltime=..0,vp.ammunition1=1..}] at @s run function plane-data:ki-43/weapon/12p7mm
execute if entity @p[tag=weapon-user,scores={vp.rightClick=1..}] if entity @s[tag=7p7mm,scores={vp.plane-weapon=1,vp.w1-cooltime=..0,vp.ammunition1=1..}] at @s run function plane-data:ki-43/weapon/7p7mm

#右クリックリセット
execute if entity @p[tag=weapon-user,scores={vp.rightClick=1..}] if entity @s[scores={vp.plane-weapon=1,vp.w1-cooltime=..0,vp.ammunition1=..0}] at @s run scoreboard players set @p[tag=weapon-user,scores={vp.rightClick=1..}] vp.rightClick 0

