#武器を使用　controll:weapon経由で実行
#実行者：機体

#選択に応じて武器ファンクション実行
execute if entity @p[tag=weapon-user,scores={vp.rightClick=1..}] if entity @s[scores={vp.curr-weapon=1,vp.w1-cooltime=..0,vp.ammunition1=1..}] at @s run function plane-data:re2005/weapon/20mm
execute if entity @p[tag=weapon-user,scores={vp.rightClick=1..}] if entity @s[scores={vp.curr-weapon=1,vp.w1-cooltime=..0,vp.ammunition1=..0}] at @s run scoreboard players set @p[tag=weapon-user,scores={vp.rightClick=1..}] vp.rightClick 0
execute if entity @p[tag=weapon-user,scores={vp.rightClick=1..}] if entity @s[scores={vp.curr-weapon=2,vp.w2-cooltime=..0,vp.ammunition2=1..}] at @s run function plane-data:re2005/weapon/bomb
execute if entity @p[tag=weapon-user,scores={vp.rightClick=1..}] if entity @s[scores={vp.curr-weapon=2,vp.ammunition2=..0}] at @s run scoreboard players set @p[tag=weapon-user,scores={vp.rightClick=1..}] vp.rightClick 0

#reload時間減算
function plane:weapon/util/cooltime-weapon

#残弾数が0になったら補充時間をセット
execute unless entity @s[scores={vp.ammunition1=1..,vp.ammunition2=1..}] as @s run function plane:weapon/util/set-reloadtime

#execute if entity @s[scores={ammunition1=..0,ammo-reload1=..0}] run scoreboard players set @s ammunition1 100
execute unless entity @s[scores={vp.ammunition1=1..,vp.ammunition2=1..}] unless entity @s[scores={vp.w1-reload=1..,vp.w2-reload=1..}] as @s run function plane:weapon/util/reset-ammunition

