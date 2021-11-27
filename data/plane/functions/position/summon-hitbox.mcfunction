#> plane:position/summon-hitbox
#
# @input
#   executer @e[tag=plane-root]
#
# @within function plane:position/position
#
#> private
   #declare score_holder #difficulty

#難易度チェック
execute store result score #difficulty vp.reg1 run difficulty

#HPがあるが存在しないパーツを召喚
execute if score #difficulty vp.reg1 matches 1.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.body unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.body{hp:0d} unless entity @e[tag=plane-hitbox,tag=body,tag=target-parts,distance=..30] run summon slime ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,body,offset-base],NoAI:1b,Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],DeathLootTable:"minecraft:entities/bat"}

#ステータスセット
data modify entity @e[type=slime,tag=plane-init,tag=body,distance=..1,limit=1] Size set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.body.size
execute store result score @e[type=slime,tag=plane-init,tag=body,distance=..1,limit=1] vp.offsetX run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.body.offset[0] 1000
execute store result score @e[type=slime,tag=plane-init,tag=body,distance=..1,limit=1] vp.offsetY run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.body.offset[1] 1000
execute store result score @e[type=slime,tag=plane-init,tag=body,distance=..1,limit=1] vp.offsetZ run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.body.offset[2] 1000

#plane-idセット
scoreboard players operation @e[type=slime,tag=plane-init,distance=..1] vp.plane-id = #plane-id vp.reg1

#召喚した場合need-calc-offsetタグ付与
execute if entity @e[type=slime,tag=plane-init,distance=..1] run tag @s add need-calc-offset

#初期化用タグ除去
tag @e[type=slime,tag=plane-init,distance=..1] remove plane-init