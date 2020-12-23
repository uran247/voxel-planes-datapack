#武器使用操作を検知し、機体に応じてweaponfunctionを呼び分け
#実行者：機体
#入力：エンティティ：plane-root　座標：plane-root
#利用可能タグ controll-target:機体

execute if entity @s[tag=d3a] run function plane-data:d3a/d3a-weapon-manager
execute if entity @s[tag=ki21] run function plane-data:ki-21/ki21-weapon-manager
execute if entity @s[tag=ki43] run function plane-data:ki-43/ki43-weapon-manager
execute if entity @s[tag=a5m] run function plane-data:a5m/a5m-weapon-manager
execute if entity @s[tag=a6m2] run function plane-data:a6m2/a6m2-weapon-manager
execute if entity @s[tag=ki44] run function plane-data:ki-44/ki44-weapon-manager
execute if entity @s[tag=d4y2] run function plane-data:d4y2/d4y2-weapon-manager
execute if entity @s[tag=j2m3] run function plane-data:j2m3/j2m3-weapon-manager
execute if entity @s[tag=g4m1] run function plane-data:g4m1/g4m1-weapon-manager
execute if entity @s[tag=a6m5] run function plane-data:a6m5/a6m5-weapon-manager
execute if entity @s[tag=ki61] run function plane-data:ki-61/ki61-weapon-manager
execute if entity @s[tag=n1k2] run function plane-data:n1k2/n1k2-weapon-manager
execute if entity @s[tag=ki49] run function plane-data:ki-49/ki49-weapon-manager
execute if entity @s[tag=f4u1] run function plane-data:f4u-1/f4u1-weapon-manager
execute if entity @s[tag=fw190d9] run function plane-data:fw190d-9/fw190d9-weapon-manager

#発射クールタイム減算
function plane:weapon/util/cooltime-weapon

#残弾数が0になったら補充時間をセット
function plane:weapon/util/set-reloadtime

#reload完了したら弾を最大まで補充
function plane:weapon/util/reset-ammunition

#残弾補充時間減算
function plane:controll/weapon/decrease-reload-time
