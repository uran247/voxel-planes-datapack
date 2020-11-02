#入力：実行者としてプレイヤー
#出力：#selected-slot returnに1~9のスロット番号の値が入る
execute store result score #selected-slot return run data get entity @s SelectedItemSlot
scoreboard players add #selected-slot return 1
