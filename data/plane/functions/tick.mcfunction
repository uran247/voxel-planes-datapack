#> plane:tick
# 
# 搭乗時、降機時の飛行機に関連するコマンド
#
# @within tag/function minecraft:tick

#> tag
# @within
#   plane:**
#   plane-data:**
    #declare tag has-rider #飛行機にパイロットがいるかどうか
    #declare tag has-dummy-rider #飛行機に偽パイロットがいるかどうか
    #declare tag plane-root #planeのrootを示すタグ
    #declare tag plane-rider #パイロットを示すタグ
    #declare tag position-processed #rootを起点にした位置修正の処理対象になったかどうか示す、タグがない場合rootを失ったパーツとされる
    #declare tag plane #飛行機を構成するエンティティのいずれかであることを示す
    #declare tag plane-spawner #飛行機スポナーから出たエンティティであることを示す

#> private
#   @private
    #declare tag no-delete #削除禁止飛行機パーツであることを示す
    #declare score_holder #gtime #削除禁止飛行機パーツであることを示す

#現在時刻取得
execute store result score #gtime vp.reg1 run time query gametime
scoreboard players operation #gtime vp.reg1 %= #20 vp.Num

#プレイヤーのplaneid、rider、keyinputタグリセット アイテム削除
execute as @a[tag=plane-rider,nbt=!{RootVehicle:{Entity:{Tags:[plane-seat]}}}] run function plane:controll/plane-leave

#飛行機操作(搭乗時)
execute as @a[nbt={RootVehicle:{Entity:{Tags:[plane-seat]}}}] at @s run function plane:controll/controll

#飛行機操作(降機時)
execute as @a[scores={vp.rightClick=1..},nbt={SelectedItem:{tag:{item-type:wrench}}},nbt=!{RootVehicle:{Entity:{Tags:[plane-seat]}}}] at @s run function plane:controll/controll-ground

#飛行機移動、向き修正
execute as @e[tag=plane-root] at @s run function plane:plane-manager

#位置処理がされなかった=rootがいなかったエンティティを削除
execute if score #gtime vp.reg1 matches 0 run kill @e[tag=plane,tag=!plane-root,tag=!position-processed,tag=!no-delete]
execute if score #gtime vp.reg1 matches 0 run tag @e[tag=position-processed] remove position-processed

#揮発性アイテムを削除
execute at @a run kill @e[type=item,nbt={Item:{tag:{volatile:1}}},distance=..32]

#スポナー使用時に飛行機召喚
execute at @a as @e[type=bat,tag=plane-spawner,distance=..10] run function plane:summon/spawner-manager

