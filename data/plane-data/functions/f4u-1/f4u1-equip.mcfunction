#処理：装備の変更処理
#入力：entity plane-root

#装備品チェック
execute store success score #1000lb vp.reg1 if entity @e[distance=..30,type=minecraft:donkey,tag=target-parts,nbt={Items:[{tag:{item-type:1000lb-bomb}}]}]
execute store success score #ag-rocket vp.reg1 if entity @e[distance=..30,type=minecraft:donkey,tag=target-parts,nbt={Items:[{tag:{item-type:ag-rocket}}]}]

#初期タグ設定
tag @s remove 1000lb-normal
tag @s remove has-bomb
tag @s remove has-rocket
tag @s remove rocket-normal
tag @s remove has-weapon2
tag @s remove main-weapon2
tag @s remove has-weapon3
tag @s remove main-weapon3

#装備
execute if score #1000lb vp.reg1 matches 1.. run tag @s add has-bomb
execute if score #1000lb vp.reg1 matches 1.. run tag @s add 1000lb-normal
execute if score #1000lb vp.reg1 matches 1.. run tag @s add has-weapon2
execute if score #1000lb vp.reg1 matches 1.. run tag @s add main-weapon2
execute if score #ag-rocket vp.reg1 matches 1.. run tag @s add has-rocket
execute if score #ag-rocket vp.reg1 matches 1.. run tag @s add rocket-normal
execute if score #ag-rocket vp.reg1 matches 1.. run tag @s add has-weapon3
execute if score #ag-rocket vp.reg1 matches 1.. run tag @s add main-weapon3

#装備種別変更
scoreboard players set @s vp.weapon-types 2
scoreboard players operation @s[tag=has-bomb] vp.weapon-types *= #3 vp.Num
scoreboard players operation @s[tag=has-rocket] vp.weapon-types *= #5 vp.Num
#weapon-id
# 2: 12.7mm gun
# 3: bomb
# 5: rocket

#装備済み爆弾削除
scoreboard players set #kill-weapon vp.reg1 0
execute if entity @s[tag=!1000lb-normal] if entity @e[tag=target-parts,tag=1000lb,tag=bomb-normal] run scoreboard players set #kill-weapon vp.reg1 1
execute if entity @s[tag=!rocket-normal] if entity @e[tag=target-parts,tag=rocket-normal] run scoreboard players set #kill-weapon vp.reg1 1
execute if score #kill-weapon vp.reg1 matches 1.. run kill @e[tag=target-parts,tag=plane-bomb]
execute if score #kill-weapon vp.reg1 matches 1.. run kill @e[tag=target-parts,tag=plane-rocket]

#弾薬リセット
scoreboard players operation @s[tag=has-bomb] vp.ammunition2 = @s vp.max-ammo2
scoreboard players set @s[tag=!has-bomb] vp.ammunition2 0
scoreboard players operation @s[tag=has-rocket] vp.ammunition3 = @s vp.max-ammo3
scoreboard players set @s[tag=!has-rocket] vp.ammunition3 0

#ステータス変更
#装備に応じて右記ステータス変更：最高速度　巡航速度　旋回力
