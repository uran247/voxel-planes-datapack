#> plane-data:j2m3/j2m3-weapon-manager
#
# @input
#   executer @e[tag=plane-root]
#
# 武器を使用
#
# @within function plane:weapon/weapon-manager

#選択に応じて武器ファンクション実行
execute if entity @s[scores={vp.curr-weapon=1,vp.w1-cooltime=..0,vp.ammunition1=1..}] at @s run function plane-data:j2m3/weapon/model1-20mm
execute if entity @s[scores={vp.curr-weapon=2,vp.w2-cooltime=..0,vp.ammunition2=1..}] at @s run function plane-data:j2m3/weapon/model2-20mm

#右クリックリセット
execute if entity @s[scores={vp.curr-weapon=1,vp.w1-cooltime=..0,vp.ammunition1=..0}] at @s run scoreboard players set @p vp.rightClick 0
execute if entity @s[scores={vp.curr-weapon=2,vp.w2-cooltime=..0,vp.ammunition2=..0}] at @s run scoreboard players set @p vp.rightClick 0

#武器使用フラグ削除
tag @s remove need-use-weapon