#tickタグで指定して実行
#搭乗時、降機時の飛行機に関連するコマンド

#プレイヤーのplaneid、rider、keyinputタグリセット アイテム削除
execute as @a[tag=plane-rider,nbt=!{RootVehicle:{Entity:{Tags:[plane-seat]}}}] run function plane:controll/plane-leave

#飛行機のタグリセット
tag @e[type=armor_stand,tag=plane-root] remove has-rider

#飛行機操作(搭乗時)
execute as @a[nbt={RootVehicle:{Entity:{Tags:[plane-seat]}}}] at @s run function plane:controll/controll

#飛行機操作(降機時)
execute as @a[scores={vp.rightClick=1..},nbt=!{RootVehicle:{Entity:{Tags:[plane-seat]}}},nbt={SelectedItem:{tag:{item-type:wrench}}}] at @s run function plane:controll/controll-ground

#飛行機移動、向き修正
execute as @e[type=armor_stand,tag=plane-root] at @s run function plane:plane-manager

#位置処理がされなかった=rootがいなかったエンティティを削除
kill @e[tag=plane,tag=!plane-root,tag=!position-processed,tag=!no-delete]
tag @e[tag=position-processed] remove position-processed

#揮発性アイテムを削除
execute at @a run kill @e[type=item,nbt={Item:{tag:{volatile:1}}},distance=..32]

#スポナー使用時に飛行機召喚
execute if entity @e[type=bat,tag=plane-spawner] run function plane:summon/spawner-manager
