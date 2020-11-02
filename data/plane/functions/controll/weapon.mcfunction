#武器使用操作を検知し、機体に応じてweaponfunctionを呼び分け
#実行者：プレイヤー
#入力：エンティティ：プレイヤー　座標：機体
#利用可能タグ controll-target:機体

#武器使用者にタグ付け
tag @s[nbt={Inventory:[{Slot:-106b,tag:{item-type:controll-rod}}]}] add weapon-user

#使用武器選択判定
#execute if entity @s[scores={drop-cont-stick=1..}] at @s run function plane:controll/weapon/switch-weapon
execute if entity @s[nbt=!{Inventory:[{Slot:-106b,tag:{item-type:controll-rod}}]}] at @s run function plane:controll/weapon/switch-weapon

#右クリック判定
execute if score @s rightClick matches 2.. run scoreboard players set @s rightClick 0

#weaponfunctionを実行
execute as @e[tag=controll-target,distance=..1] if entity @s[tag=d3a] at @s run function plane-data:d3a/d3a-weapon-manager
execute as @e[tag=controll-target,distance=..1] if entity @s[tag=ki21] at @s run function plane-data:ki-21/ki21-weapon-manager
execute as @e[tag=controll-target,distance=..1] if entity @s[tag=ki43] at @s run function plane-data:ki-43/ki43-weapon-manager
execute as @e[tag=controll-target,distance=..1] if entity @s[tag=a5m] at @s run function plane-data:a5m/a5m-weapon-manager
execute as @e[tag=controll-target,distance=..1] if entity @s[tag=a6m2] at @s run function plane-data:a6m2/a6m2-weapon-manager
execute as @e[tag=controll-target,distance=..1] if entity @s[tag=ki44] at @s run function plane-data:ki-44/ki44-weapon-manager
execute as @e[tag=controll-target,distance=..1] if entity @s[tag=d4y2] at @s run function plane-data:d4y2/d4y2-weapon-manager
execute as @e[tag=controll-target,distance=..1] if entity @s[tag=j2m3] at @s run function plane-data:j2m3/j2m3-weapon-manager
execute as @e[tag=controll-target,distance=..1] if entity @s[tag=g4m1] at @s run function plane-data:g4m1/g4m1-weapon-manager
execute as @e[tag=controll-target,distance=..1] if entity @s[tag=a6m5] at @s run function plane-data:a6m5/a6m5-weapon-manager
execute as @e[tag=controll-target,distance=..1] if entity @s[tag=ki61] at @s run function plane-data:ki-61/ki61-weapon-manager
execute as @e[tag=controll-target,distance=..1] if entity @s[tag=n1k2] at @s run function plane-data:n1k2/n1k2-weapon-manager

#残弾補充時間減算
execute as @e[tag=controll-target,distance=..1] run function plane:controll/weapon/decrease-reload-time

#使用者タグ削除
tag @s remove weapon-user
