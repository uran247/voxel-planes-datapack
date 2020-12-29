#処理：装備の変更処理
#入力：entity plane-root

#装備品チェック
execute store success score #500kg vp.reg1 if entity @e[distance=..30,type=minecraft:donkey,tag=target-parts,nbt={Items:[{tag:{item-type:500kg-bomb}}]}]
execute store success score #rocket vp.reg1 if entity @e[distance=..30,type=minecraft:donkey,tag=target-parts,nbt={Items:[{tag:{item-type:aa-rocket}}]}]

#初期タグ設定
tag @s remove has-rocket
tag @s remove 500kg-normal
tag @s remove rocket-normal
tag @s remove has-weapon4
tag @s remove main-weapon4
tag @s add 250kg-normal
tag @s add 60kg-normal

#装備
execute if score #rocket vp.reg1 matches 1.. run tag @s add has-rocket
execute if score #rocket vp.reg1 matches 1.. run tag @s add rocket-normal
execute if score #rocket vp.reg1 matches 1.. run tag @s add has-weapon4
execute if score #rocket vp.reg1 matches 1.. run tag @s add main-weapon4
execute if score #rocket vp.reg1 matches 1.. run tag @s remove 60kg-normal
execute if score #500kg vp.reg1 matches 1.. run tag @s add has-bomb
execute if score #500kg vp.reg1 matches 1.. run tag @s add 500kg-normal
execute if score #500kg vp.reg1 matches 1.. run tag @s remove 250kg-normal

#装備種別変更
scoreboard players set @s vp.weapon-types 2
scoreboard players operation @s[tag=has-bomb] vp.weapon-types *= #3 vp.Num
scoreboard players operation @s[tag=has-rocket] vp.weapon-types *= #5 vp.Num
#weapon-id
# 2: gun
# 3: bomb 
# 5: rocket

#装備済み爆弾削除
scoreboard players set #kill-weapon vp.reg1 0
execute if entity @s[tag=!60kg-normal] if entity @e[tag=target-parts,tag=60kg,tag=bomb-normal] run scoreboard players set #kill-weapon vp.reg1 1
execute if entity @s[tag=!250kg-normal] if entity @e[tag=target-parts,tag=250kg,tag=bomb-normal] run scoreboard players set #kill-weapon vp.reg1 1
execute if entity @s[tag=!500kg-normal] if entity @e[tag=target-parts,tag=500kg,tag=bomb-normal] run scoreboard players set #kill-weapon vp.reg1 1
execute if entity @s[tag=!rocket-normal] if entity @e[tag=target-parts,tag=rocket-normal] run scoreboard players set #kill-weapon vp.reg1 1
execute if score #kill-weapon vp.reg1 matches 1.. run kill @e[tag=target-parts,tag=plane-bomb]
execute if score #kill-weapon vp.reg1 matches 1.. run kill @e[tag=target-parts,tag=plane-rocket]

#弾薬リセット
execute if score #kill-weapon vp.reg1 matches 1.. run scoreboard players operation @s[tag=has-bomb] vp.ammunition2 = @s vp.max-ammo2
execute if score #kill-weapon vp.reg1 matches 1.. run scoreboard players operation @s[tag=has-rocket] vp.ammunition4 = @s vp.max-ammo4

#ステータス変更
#装備に応じて右記ステータス変更：最高速度　巡航速度　旋回力
