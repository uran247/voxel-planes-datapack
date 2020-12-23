#武器を使用　controll:weapon経由で実行
#実行者：機体

#選択に応じて武器ファンクション実行
execute if entity @p[tag=weapon-user,scores={vp.rightClick=1..}] if entity @s[scores={vp.plane-weapon=1,vp.w1-cooltime=..0,vp.ammunition1=1..,vp.AngX=..1600,vp.AngZ=-1000..1000},tag=flying] at @s run function plane-data:ki-21/weapon/bomb
execute if entity @p[tag=weapon-user,scores={vp.rightClick=1..}] unless entity @s[scores={vp.AngX=..1600,vp.AngZ=-1000..1000}] at @s run tellraw @p[tag=weapon-user,scores={vp.rightClick=1..}] [{"text":"投下可能な姿勢になっていません","color":"yellow"}]

#右クリックリセット
execute if entity @p[tag=weapon-user,scores={vp.rightClick=1..}] if entity @s[scores={vp.plane-weapon=1}] at @s run scoreboard players set @p[tag=weapon-user,scores={vp.rightClick=1..}] vp.rightClick 0

#後部機銃発射（自動発射）
execute if entity @s[scores={vp.w2-cooltime=..0,vp.ammunition2=1..}] at @s run function plane-data:ki-21/weapon/check-rear1-target
execute if entity @s[scores={vp.w2-cooltime=..0,vp.ammunition2=1..}] if entity @e[tag=rear-gun-target,distance=..40] at @s run function plane-data:ki-21/weapon/rear-gun1
execute if entity @s[scores={vp.w3-cooltime=..0,vp.ammunition3=1..}] at @s run function plane-data:ki-21/weapon/check-rear2-target
execute if entity @s[scores={vp.w3-cooltime=..0,vp.ammunition3=1..}] if entity @e[tag=rear-gun-target,distance=..40] at @s run function plane-data:ki-21/weapon/rear-gun2
execute if entity @s[scores={vp.w4-cooltime=..0,vp.ammunition4=1..}] at @s run function plane-data:ki-21/weapon/check-rear3-target
execute if entity @s[scores={vp.w4-cooltime=..0,vp.ammunition4=1..}] if entity @e[tag=rear-gun-target,distance=..40] at @s run function plane-data:ki-21/weapon/rear-gun3

#ボム選択時に照準を出す
execute if entity @s[scores={vp.AngX=1..,vp.plane-weapon=1,vp.w1-cooltime=..0,vp.ammunition1=1..}] at @s run tp 0-0-0-0-a ~ ~ ~ ~ ~10
execute if entity @s[scores={vp.AngX=1..,vp.plane-weapon=1,vp.w1-cooltime=..0,vp.ammunition1=1..}] run function plane:weapon/util/bomb-aim
