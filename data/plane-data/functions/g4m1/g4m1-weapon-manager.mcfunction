#武器を使用　controll:weapon経由で実行
#実行者：機体

#選択に応じて武器ファンクション実行
execute if entity @p[tag=weapon-user,scores={vp.rightClick=1..}] if entity @s[scores={vp.plane-weapon=1,vp.w1-reload=..0,vp.ammunition1=1..,vp.AngX=..1600,vp.AngZ=-1000..1000},tag=flying] at @s run function plane-data:g4m1/weapon/bomb

execute if entity @p[tag=weapon-user,scores={vp.rightClick=1..}] unless entity @s[scores={vp.AngX=..1600,vp.AngZ=-1000..1000}] at @s run tellraw @p[tag=weapon-user,scores={vp.rightClick=1..}] [{"text":"投下可能な姿勢になっていません","color":"yellow"}]
execute if entity @p[tag=weapon-user,scores={vp.rightClick=1..}] unless entity @s[scores={vp.AngX=..1600,vp.AngZ=-1000..1000}] at @s run scoreboard players set @p[tag=weapon-user,scores={vp.rightClick=1..}] vp.rightClick 0

#後部機銃発射（自動発射）
function plane:position/util/calc-triangle-ratio
scoreboard players operation #sin vp.reg1 = #sin vp.return
scoreboard players operation #cos vp.reg1 = #cos vp.return
execute if entity @s[scores={vp.w2-reload=..0,vp.ammunition2=1..}] at @s run function plane-data:g4m1/weapon/check-rear1-target
execute if entity @s[scores={vp.w2-reload=..0,vp.ammunition2=1..}] if entity @e[tag=rear-gun-target,distance=..55] at @s run function plane-data:g4m1/weapon/rear-gun1
execute if entity @s[scores={vp.w3-reload=..0,vp.ammunition3=1..}] at @s run function plane-data:g4m1/weapon/check-rear2-target
execute if entity @s[scores={vp.w3-reload=..0,vp.ammunition3=1..}] if entity @e[tag=rear-gun-target,distance=..55] at @s run function plane-data:g4m1/weapon/rear-gun2
execute if entity @s[scores={vp.w4-reload=..0,vp.ammunition4=1..}] at @s run function plane-data:g4m1/weapon/check-rear3-target
execute if entity @s[scores={vp.w4-reload=..0,vp.ammunition4=1..}] if entity @e[tag=rear-gun-target,distance=..55] at @s run function plane-data:g4m1/weapon/rear-gun3
execute if entity @s[scores={vp.w5-reload=..0,vp.ammunition5=1..}] at @s run function plane-data:g4m1/weapon/check-rear4-target
execute if entity @s[scores={vp.w5-reload=..0,vp.ammunition5=1..}] if entity @e[tag=rear-gun-target,distance=..55] at @s run function plane-data:g4m1/weapon/rear-gun4
execute if entity @s[scores={vp.w6-reload=..0,vp.ammunition6=1..}] at @s run function plane-data:g4m1/weapon/check-rear5-target
execute if entity @s[scores={vp.w6-reload=..0,vp.ammunition6=1..}] if entity @e[tag=rear-gun-target,distance=..55] at @s run function plane-data:g4m1/weapon/rear-gun5

#reload時間減算
execute as @s run function plane:weapon/util/cooltime-weapon

#残弾数が0になったら補充時間をセット
execute unless entity @s[scores={vp.ammunition1=1..,vp.ammunition2=1..,vp.ammunition3=1..,vp.ammunition4=1..,vp.ammunition5=1..,vp.ammunition6=1..}] unless entity @s[scores={vp.ammunition1=..-1,vp.ammunition2=..-1,vp.ammunition3=..-1,vp.ammunition4=..-1,vp.ammunition5=..-1,vp.ammunition6=..-1}] as @s run function plane:weapon/util/set-reloadtime

#リロードタイムが経過したらリロード
execute unless entity @s[scores={vp.ammo-reload1=1..,vp.ammo-reload2=1..,vp.ammo-reload3=1..,vp.ammo-reload4=1..,vp.ammo-reload5=1..,vp.ammo-reload6=1..}] unless entity @s[scores={vp.ammunition1=..-1,vp.ammunition2=..-1,vp.ammunition3=..-1,vp.ammunition4=..-1,vp.ammunition5=..-1,vp.ammunition6=..-1}] as @s run function plane:weapon/util/reset-ammunition

#ボム選択時に照準を出す
execute if entity @s[scores={vp.AngX=1..,vp.plane-weapon=1,vp.w1-reload=..0,vp.ammunition1=1..}] at @s run tp 0-0-0-0-a ~ ~ ~ ~ ~10
execute if entity @s[scores={vp.AngX=1..,vp.plane-weapon=1,vp.w1-reload=..0,vp.ammunition1=1..}] run function plane:weapon/util/bomb-aim

#tellraw @p [{"score" : {"name":"@s", "objective":"ammo-reload5"}}, {"text":" "}, {"score" : {"name":"#is-tracer", "objective":"vp.reg1"}}]
