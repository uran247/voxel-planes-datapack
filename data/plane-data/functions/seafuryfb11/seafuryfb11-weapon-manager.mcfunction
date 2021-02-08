#> plane-data:seafuryfb11/seafuryfb11-weapon-manager
#
# 武器を使用　controll:weapon経由で実行
# 実行者：機体
#
# @within
#   function plane:weapon/weapon-manager

#選択に応じて武器ファンクション実行
execute if entity @p[tag=weapon-user,scores={vp.rightClick=1..}] if entity @s[scores={vp.curr-weapon=1,vp.w1-cooltime=..0,vp.ammunition1=1..}] at @s run function plane-data:fw190d-9/weapon/20mm
execute if entity @p[tag=weapon-user,scores={vp.rightClick=1..}] if entity @s[scores={vp.curr-weapon=2,vp.w2-cooltime=..0,vp.ammunition2=1..}] at @s run function plane-data:fw190d-9/weapon/13mm
execute if entity @p[tag=weapon-user,scores={vp.rightClick=1..}] if entity @s[tag=flying,scores={vp.curr-weapon=3,vp.w3-cooltime=..0,vp.ammunition3=1..}] at @s run function plane-data:fw190d-9/weapon/bomb

#右クリックリセット
execute if entity @p[tag=weapon-user,scores={vp.rightClick=1..}] if entity @s[scores={vp.curr-weapon=1,vp.w1-cooltime=..0,vp.ammunition1=..0}] at @s run scoreboard players set @p[tag=weapon-user,scores={vp.rightClick=1..}] vp.rightClick 0
execute if entity @p[tag=weapon-user,scores={vp.rightClick=1..}] if entity @s[scores={vp.curr-weapon=2,vp.w2-cooltime=..0,vp.ammunition2=..0}] at @s run scoreboard players set @p[tag=weapon-user,scores={vp.rightClick=1..}] vp.rightClick 0
execute if entity @p[tag=weapon-user,scores={vp.rightClick=1..}] if entity @s[scores={vp.curr-weapon=3}] at @s run scoreboard players set @p[tag=weapon-user,scores={vp.rightClick=1..}] vp.rightClick 0

