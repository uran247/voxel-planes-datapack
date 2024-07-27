#> weapon:util/damage
#
# エンティティに引数分のダメージを与える
#
# @input
#   as @s ダメージを与えられるエンティティ
#   @p[tag=weapon-owner] ダメージを与えるプレイヤー
#   with storage voxel-planes:input input.damage　ダメージ量
#
# @within function weapon:**
#

$damage @s $(damage) explosion by @p[tag=weapon-owner] 
    #$say $(damage)