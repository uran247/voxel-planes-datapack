#> util:get-player-slot
#
# 入力：実行者としてプレイヤー
# 出力：#selected-slot vp.returnに1~9のスロット番号の値が入る
#
# @output
#   score #selected-slot vp.return
#

#>
# @public
    #declare score_holder #selected-slot

execute store result score #selected-slot vp.return run data get entity @s SelectedItemSlot
scoreboard players add #selected-slot vp.return 1
