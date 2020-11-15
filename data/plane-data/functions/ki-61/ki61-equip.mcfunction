#処理：装備の変更処理
#入力：entity plane-root

#装備品チェック
execute store success score #250kg vp.reg1 if entity @e[distance=..30,type=minecraft:donkey,tag=target-parts,nbt={Items:[{tag:{item-type:250kg-bomb}}]}]
execute store success score #mg151 vp.reg1 if entity @e[distance=..30,type=minecraft:donkey,tag=target-parts,nbt={Items:[{tag:{item-type:mg151}}]}]

#初期タグ設定
tag @s remove 250kg-normal
tag @s remove bombed
tag @s remove has-weapon3
tag @s remove main-weapon3
tag @s remove mg151

#装備
execute if score #250kg vp.reg1 matches 1.. run tag @s add bombed
execute if score #250kg vp.reg1 matches 1.. run tag @s add 250kg-normal
execute if score #250kg vp.reg1 matches 1.. run tag @s add has-weapon3
execute if score #250kg vp.reg1 matches 1.. run tag @s add main-weapon3
execute if score #mg151 vp.reg1 matches 1.. run tag @s add mg151

#装備種別変更
scoreboard players set @s vp.weapon-types 6
scoreboard players operation @s[tag=bombed] vp.weapon-types *= #5 vp.Num
#weapon-id
# 2: 20mm gun
# 3: 12.7mm gun
# 5: bomb

#装備済み爆弾削除
scoreboard players set #kill-weapon vp.reg1 0
execute if entity @s[tag=!250kg-normal] if entity @e[tag=target-parts,tag=250kg,tag=bomb-normal] run scoreboard players set #kill-weapon vp.reg1 1
execute if score #kill-weapon vp.reg1 matches 1.. run kill @e[tag=target-parts,tag=plane-bomb]

#弾薬リセット
scoreboard players operation @s[tag=bombed] vp.ammunition3 = @s vp.max-ammo3
scoreboard players set @s[tag=!bombed] vp.ammunition3 0

#ステータス変更
#装備に応じて右記ステータス変更：最高速度　巡航速度　旋回力
