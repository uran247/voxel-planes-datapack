#機体が飛行中か滑走中か確認してそれに応じた移動ファンクションを実行
#実行例:execute as @a[nbt={RootVehicle:{Entity:{Tags:[plane-root]}}}] at @s run function plane:controll/controll
#実行者：プレイヤー

#透明にしとく
effect give @s minecraft:invisibility 1

#plane-riderタグのツイてないプレイヤーの右クリック検知スコアとドロップスコアをリセット,操縦桿付与
execute as @s[tag=!plane-rider] run scoreboard players reset @s rightClick
execute as @s[tag=!plane-rider] run scoreboard players reset @s drop-cont-stick
execute as @s[tag=!plane-rider] run loot replace entity @s weapon.offhand loot item:tools/controll-stick

#seatを参照して実行者にid、タグ付け
execute store result score @s plane-id run data get entity @s RootVehicle.Entity.Attributes[{Name:"minecraft:generic.movement_speed"}].Base
tag @s add plane-rider
tag @s add entity-nohit

#実行者と対象機体にタグ付け
tag @s add controller
scoreboard players operation #plane-id reg1 = @s plane-id
execute as @e[tag=plane-root] if score @s plane-id = #plane-id reg1 run tag @s add controll-target

#飛行機に搭乗者がいることをタグ付け
tag @e[tag=controll-target,limit=1] add has-rider

#選択スロット判定(plane:controll/rolling plane:controll/flying plane:controll/weaponで使用)
function util:get-player-slot
scoreboard players operation @s plane-key-input = #selected-slot return

#自分と同じIDのパーツにタグ付け(今のところ使ってないのでコメントアウト)
#execute at @e[tag=controll-target,distance=..20] as @e[distance=..20,scores={plane-id=1..}] if score @s plane-id = #plane-id reg1 run tag @s add controll-parts

#移動、武器使用
execute at @e[tag=controll-target,limit=1,sort=nearest,distance=..20] run function plane:controll/plane-controll

#移動操作
#execute at @e[tag=controll-target,tag=!flying,limit=1,sort=nearest,distance=..20] run function plane:controll/rolling
#execute at @e[tag=controll-target,tag=flying,limit=1,sort=nearest,distance=..20] run function plane:controll/flying

#武器使用
#execute at @e[tag=controll-target,limit=1,sort=nearest,distance=..20] run function plane:controll/weapon

#スコア情報をActionbarに表示 
execute at @s as @e[tag=controll-target,distance=..20,limit=1] run function plane:controll/plane-info

#アイテム欄に操作説明パネルセット
execute as @s run function plane:controll/set-indicator-items

#タグ削除
tag @e[tag=controll-target,tag=plane-root,limit=1,sort=nearest,distance=..20] remove controll-target
#tag @e[tag=controll-parts,distance=..20] remove controll-parts
tag @s remove controller
