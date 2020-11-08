#武器を使用　controll:weapon経由で実行
#実行者：機体

#選択に応じて武器ファンクション実行
execute if entity @p[tag=weapon-user,scores={rightClick=1..}] if entity @s[scores={plane-weapon=1,w1-reload=..0,ammunition1=1..,AngX=..1600,AngZ=-1000..1000},tag=flying] at @s run function plane-data:ki-49/weapon/bomb
execute if entity @p[tag=weapon-user,scores={rightClick=1..}] unless entity @s[scores={AngX=..1600,AngZ=-1000..1000}] at @s run tellraw @p[tag=weapon-user,scores={rightClick=1..}] [{"text":"投下可能な姿勢になっていません","color":"yellow"}]
execute if entity @p[tag=weapon-user,scores={rightClick=1..}] unless entity @s[scores={AngX=..1600,AngZ=-1000..1000}] at @s run scoreboard players set @p[tag=weapon-user,scores={rightClick=1..}] rightClick 0

#後部機銃発射（自動発射）
execute if entity @s[scores={w2-reload=..0,ammunition2=1..}] at @s run function plane-data:ki-49/weapon/check-rear1-target
execute if entity @s[scores={w2-reload=..0,ammunition2=1..}] if entity @e[tag=rear-gun-target,distance=..40] at @s run function plane-data:ki-49/weapon/rear-gun1
execute if entity @s[scores={w3-reload=..0,ammunition3=1..}] at @s run function plane-data:ki-49/weapon/check-rear2-target
execute if entity @s[scores={w3-reload=..0,ammunition3=1..}] if entity @e[tag=rear-gun-target,distance=..40] at @s run function plane-data:ki-49/weapon/rear-gun2
execute if entity @s[scores={w4-reload=..0,ammunition4=1..}] at @s run function plane-data:ki-49/weapon/check-rear3-target
execute if entity @s[scores={w4-reload=..0,ammunition4=1..}] if entity @e[tag=rear-gun-target,distance=..40] at @s run function plane-data:ki-49/weapon/rear-gun3

#reload時間減算
execute as @s run function plane:weapon/util/cooltime-weapon

#残弾数が0になったら補充時間をセット
execute unless entity @s[scores={ammunition1=1..,ammunition2=1..,ammunition3=1..,ammunition4=1..}] unless entity @s[scores={ammunition1=..-1,ammunition2=..-1,ammunition3=..-1,ammunition4=..-1}] as @s run function plane:weapon/util/set-reloadtime

#リロードタイムが経過したらリロード
execute unless entity @s[scores={ammunition1=..-1,ammunition2=..-1,ammunition3=..-1,ammunition4=..-1}] unless entity @s[scores={ammo-reload1=1..,ammo-reload2=1..,ammo-reload3=1..,ammo-reload4=1..}] as @s run function plane:weapon/util/reset-ammunition

#ボム選択時に照準を出す
execute if entity @s[scores={AngX=1..,plane-weapon=1,w1-reload=..0,ammunition1=1..}] at @s run tp 0-0-0-0-a ~ ~ ~ ~ ~10
execute if entity @s[scores={AngX=1..,plane-weapon=1,w1-reload=..0,ammunition1=1..}] run function plane:weapon/util/bomb-aim
