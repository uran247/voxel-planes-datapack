#武器を使用　controll:weapon経由で実行
#実行者：機体

#選択に応じて武器ファンクション実行,弾薬選択武器の弾薬が0だったら右クリック値を0に
execute if entity @p[tag=weapon-user,scores={vp.rightClick=1..}] if entity @s[scores={vp.plane-weapon=1,vp.w1-reload=..0,vp.ammunition1=1..}] at @s run function plane-data:d3a/weapon/7p7mm
execute if entity @p[tag=weapon-user,scores={vp.rightClick=1..}] if entity @s[scores={vp.plane-weapon=2,vp.w2-reload=..0,vp.ammunition2=1..},tag=flying] at @s run function plane-data:d3a/weapon/bomb
execute if entity @p[tag=weapon-user,scores={vp.rightClick=1..}] if entity @s[scores={vp.plane-weapon=2,vp.ammunition2=..0}] at @s run scoreboard players set @p[tag=weapon-user,scores={vp.rightClick=1..}] vp.rightClick 0

#後部機銃発射（自動発射）
execute if entity @s[scores={vp.w3-reload=..0,vp.ammunition3=1..}] at @s run function plane-data:d3a/weapon/check-rear-target
execute if entity @s[scores={vp.w3-reload=..0,vp.ammunition3=1..}] if entity @e[tag=rear-gun-target,distance=..32] at @s run function plane-data:d3a/weapon/rear-gun

#reload時間減算
execute as @s run function plane:weapon/util/cooltime-weapon

#残弾数が0になったら補充時間をセット
execute unless entity @s[scores={vp.ammunition1=1..,vp.ammunition2=1..,vp.ammunition3=1..}] unless entity @s[scores={vp.ammunition1=..-1,vp.ammunition2=..-1,vp.ammunition3=..-1}] as @s run function plane:weapon/util/set-reloadtime

#リロードタイムが経過したらリロード
execute unless entity @s[scores={vp.ammunition1=..-1,vp.ammunition2=..-1,vp.ammunition3=..-1}] unless entity @s[scores={vp.ammo-reload1=1..,vp.ammo-reload2=1..,vp.ammo-reload3=1..}] as @s run function plane:weapon/util/reset-ammunition


#ボム選択時に照準を出す
execute if entity @s[scores={vp.AngX=1..,vp.plane-weapon=2,vp.w2-reload=..0,vp.ammunition2=1..}] at @s run tp 0-0-0-0-a ~ ~ ~ ~ ~10
execute if entity @s[scores={vp.AngX=1..,vp.plane-weapon=2,vp.w2-reload=..0,vp.ammunition2=1..}] run function plane:weapon/util/bomb-aim
#execute if entity @s[scores={plane-weapon=2,w1-reload=..0,ammunition1=2..}] at 0-0-0-0-4 as @s run function debug:test-chk-blk
#execute if entity @s[scores={plane-weapon=2,w1-reload=..0,ammunition1=2..}] run tp 0-0-0-0-4 0 1 0
