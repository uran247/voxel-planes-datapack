#処理：装備の変更処理
#入力：entity plane-root

#装備品チェック
execute store success score #250kg vp.reg1 if entity @e[distance=..30,type=minecraft:donkey,tag=target-parts,nbt={Items:[{tag:{item-type:250kg-bomb}}]}]

#初期タグ設定
tag @s remove 250kg-normal
tag @s remove has-bomb
tag @s remove has-weapon2
tag @s remove main-weapon2

#装備
execute if score #250kg vp.reg1 matches 1.. run tag @s add has-bomb
execute if score #250kg vp.reg1 matches 1.. run tag @s add 250kg-normal
execute if score #250kg vp.reg1 matches 1.. run tag @s add has-weapon2
execute if score #250kg vp.reg1 matches 1.. run tag @s add main-weapon2

#装備種別変更
scoreboard players set @s vp.weapon-types 2
#weapon-id
# 2: 20mm gun
# 3: bomb

#装備済み爆弾削除
scoreboard players set #kill-weapon vp.reg1 0
execute if entity @s[tag=!250kg-normal] if entity @e[tag=target-parts,tag=250kg,tag=bomb-normal] run scoreboard players set #kill-weapon vp.reg1 1
execute if score #kill-weapon vp.reg1 matches 1.. run kill @e[tag=target-parts,tag=plane-bomb]

#弾薬リセット
scoreboard players set @s[tag=!has-bomb] vp.ammunition2 0

#ステータス変更
#装備に応じて右記ステータス変更：最高速度　巡航速度　旋回力
