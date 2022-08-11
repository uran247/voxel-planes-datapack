#> weapon:util/check-block/detect-block
#
# 初期位置に0-0-0-0-9がいてブロックを検知した場合そこに0-0-0-0-9をTPする
# as 0-0-0-0-4 視線終端エンティティ
# at 実行者の向きで0-51.2ブロック先(0.4ブロック刻み
#
# @within function weapon:util/check-block/step7

execute positioned ^ ^ ^1000 if entity @s[distance=..1000] positioned ^ ^ ^-1000 unless block ~ ~ ~ air as 0-0-0-0-9 run tp @s[distance=..0.1,x=0,y=1,z=0] ~ ~ ~