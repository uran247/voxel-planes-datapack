#処理：榴弾砲の位置修正、activeのon-off
#入力：entity tag=howitzer152

tp @s ~ ~ ~ facing 4600 46 -6130
tp @s ~ ~ ~ ~ -17
tag @s remove attack-active
execute positioned ~-128 -64 ~-128 if entity @p[dx=256,dy=2048,dz=128] run tag @s add attack-active