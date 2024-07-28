#> plane:controll/controll
#
# 機体が飛行中か滑走中か確認してそれに応じた移動ファンクションを実行
# 実行例:execute as @a[nbt={RootVehicle:{Entity:{Tags:[plane-root]}}}] at @s run function plane:controll/controll
# 実行者：プレイヤー
#
# @input
#   executer @p
#
# @within
#   plane:tick
#

#> a
# @within function plane:controll/**
    #declare tag controller #飛行機を操縦者を示す
    #declare tag bomb-view #爆弾視点であることを示す
    #declare tag controll-target #操縦対象のplane-rootを示す

#> 
# @private
    #declare score_holder #plane-id #操縦者のplane-idを示す
    #declare tag target-click-detector  #紐づけ対象のクリック検知であることを示す

#透明にしとく
effect give @s minecraft:invisibility 1 1 true

#plane-riderタグのツイてないプレイヤーの右クリック検知スコアとドロップスコアをリセット,操縦桿付与
execute as @s[tag=!plane-rider] run scoreboard players reset @s vp.rightClick

#seatを参照して実行者にid、タグ付け
execute store result score @s vp.plane-id run data get entity @s RootVehicle.Entity.Attributes[{id:"minecraft:generic.movement_speed"}].base

#実行者と対象機体にタグ付け
tag @s add controller
scoreboard players operation #plane-id vp.reg1 = @s vp.plane-id
execute as @e[type=armor_stand,tag=plane-root,distance=..20] if score @s vp.plane-id = #plane-id vp.reg1 run tag @s add controll-target

#クリック検知をシートに乗せてプレイヤーに重ねる
execute if entity @s[tag=!plane-rider] at @e[tag=controll-target,distance=..20,sort=nearest,limit=1] as @e[tag=plane-click-detector,distance=..1] if score @s vp.plane-id = #plane-id vp.reg1 run tag @s add target-click-detector 
execute if entity @s[tag=!plane-rider] on vehicle run ride @e[tag=plane-click-detector,tag=target-click-detector,distance=..20,limit=1] mount @s

#実行者に搭乗者用タグ付け
tag @s add plane-rider
tag @s add entity-nohit

#選択スロット判定(plane:controll/rolling plane:controll/flying plane:controll/weaponで使用)
function util:get-player-slot
scoreboard players operation @s vp.key-input = #selected-slot vp.return

#WASD取得(plane:controll/rolling plane:controll/flyingで使用)
execute as @s run function util:get-player-keystroke
scoreboard players operation @s vp.key-storoke = #key-storoke vp.return

#爆弾視点スロットを選択してたらタグ付け
execute if score @s vp.key-input matches 6 run tag @s add bomb-view
execute unless score @s vp.key-input matches 6 run tag @s remove bomb-view

#bomb-viewがついてたら爆弾視点移動を実行
execute if entity @s[tag=bomb-view] run function plane:controll/bomb-camera/bomb-camera

#自分と同じIDのパーツにタグ付け(今のところ使ってないのでコメントアウト)
#execute at @e[tag=controll-target,distance=..20] as @e[distance=..20,scores={plane-id=1..}] if score @s plane-id = #plane-id vp.reg1 run tag @s add controll-parts

#移動、武器使用
execute at @e[tag=controll-target,distance=..20,sort=nearest,limit=1] run function plane:controll/plane-controll

#アイテム欄を掃除して操作説明アイテムをセット
execute as @s run function plane:controll/clean-inventory

#タグ削除
tag @e[tag=target-click-detector,distance=..20,sort=nearest,limit=1] remove target-click-detector
tag @e[tag=controll-target,tag=plane-root,distance=..20,sort=nearest,limit=1] remove controll-target
#tag @e[tag=controll-parts,distance=..20] remove controll-parts
tag @s remove controller
