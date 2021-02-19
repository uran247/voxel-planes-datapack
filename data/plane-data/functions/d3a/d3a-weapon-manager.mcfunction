#> plane-data:d3a/d3a-weapon-manager
#
# @input
#   executer @e[tag=plane-root]
#
# 武器を使用
#
# @within function plane:weapon/weapon-manager

#選択に応じて武器ファンクション実行,弾薬選択武器の弾薬が0だったら右クリック値を0に
execute if entity @s[scores={vp.curr-weapon=1,vp.w1-cooltime=..0,vp.ammunition1=1..}] at @s run function plane-data:d3a/weapon/7p7mm
execute if entity @s[tag=flying,scores={vp.curr-weapon=2,vp.w2-cooltime=..0,vp.ammunition2=1..}] at @s run function plane-data:d3a/weapon/bomb

#右クリックリセット
execute if entity @s[scores={vp.curr-weapon=1,vp.w1-cooltime=..0,vp.ammunition1=..0}] at @s run scoreboard players set @p vp.rightClick 0
execute if entity @s[scores={vp.curr-weapon=2}] at @s run scoreboard players set @p vp.rightClick 0

#後部機銃発射（自動発射）
execute if entity @s[scores={vp.w3-cooltime=..0,vp.ammunition3=1..}] at @s run function plane-data:d3a/weapon/check-rear-target
execute if entity @s[scores={vp.w3-cooltime=..0,vp.ammunition3=1..}] if entity @e[tag=rear-gun-target,distance=..32] at @s run function plane-data:d3a/weapon/rear-gun

#ボム選択時に照準を出す
execute if entity @s[scores={vp.AngX=1..,vp.curr-weapon=2,vp.w2-cooltime=..0,vp.ammunition2=1..}] at @s run tp 0-0-0-0-a ~ ~ ~ ~ ~10
execute if entity @s[scores={vp.AngX=1..,vp.curr-weapon=2,vp.w2-cooltime=..0,vp.ammunition2=1..}] run function plane:weapon/util/bomb-aim

#武器使用フラグ削除
tag @s remove need-use-weapon