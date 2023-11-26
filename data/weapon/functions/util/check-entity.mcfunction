#> weapon:util/check-entity
#
# @input
#   as @e[tag=gun]
#       視線主エンティティ
#   at @s
#       視線主エンティティ
#   with storage voxel-planes:input input.range
#       判定したい距離/2(判定したい距離*1だと自分の背後のエンティティを誤検知するため)
#
# @within function weapon:gun/move

#> private
# @private
    #declare tag check-executer #実行者を示す

#実効者にタグ付け
tag @s add check-executer

#実効者 @e[tag=block-checker,distance=..1,x=0,y=1,z=0,limit=1] の直線上にいるエンティティにタグ付け
tp 0-0-0-0-b ~ ~ ~
$execute positioned ^ ^ ^$(range) as @e[tag=!check-executer,distance=..$(range)] positioned as @s positioned ^ ^ ^1000 facing entity 0-0-0-0-b feet positioned ^ ^ ^1000 positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run tag @s add hit-on-line

#実効者と目印にタグ削除
tag @s remove check-executer
tp 0-0-0-0-b 0.5 2 0.5
