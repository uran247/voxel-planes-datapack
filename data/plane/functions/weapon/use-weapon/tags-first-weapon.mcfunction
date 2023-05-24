#> plane:weapon/use-weapon/tags-first-weapon
#
# on passengersで引っ掛けた最初のエンティティにinit tagを付与する
# @input
#   executer @s[tag=plane-bomb]
#   score #init-tag-add vp.reg1
# @output
#   tag weapon-init 
#
# @within
#   function plane:weapon/use-weapon/use-bomb
#   function plane:weapon/use-weapon/tags-first-weapon
    #declare tag use-init #初期化処理中の爆弾であることを示す
    #declare score_holder #init-tag-add  0:タグ付け未了 1:タグ付け完了


execute if score #init-tag-add vp.reg1 matches 0 run tag @s add use-init
execute if score #init-tag-add vp.reg1 matches 0 run scoreboard players set #init-tag-add vp.reg1 1
