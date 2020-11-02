#ステージセレクトのUIのCustomNameの状態を確認してアイテムセット

#チェストに突っ込まれた余計なアイテムを弾き返す
execute store result score #select-item-count reg1 if data block ~ ~ ~ Items[{tag:{"item-type":"stage-select"}}]
execute store result score #chset-item-count reg1 if data block ~ ~ ~ Items[]
execute unless score #select-item-count reg1 = #chset-item-count reg1 run data modify block 0 6 0 Items set from block ~ ~ ~ Items
execute unless score #select-item-count reg1 = #chset-item-count reg1 run data modify block 0 6 0 Items[{tag:{item-type:stage-select}}].Count set value 0
execute unless score #select-item-count reg1 = #chset-item-count reg1 run loot spawn ~ ~ ~1 mine 0 6 0 air{load:1b}
execute unless score #select-item-count reg1 = #chset-item-count reg1 run data merge block 0 6 0 {Items:[]}

#中身クリア
data merge block ~ ~ ~ {Items:[]}

#アイテムセット
execute if block ~ ~ ~ minecraft:yellow_shulker_box{CustomName:"{\"text\":\"stage select page1\"}"} run loot replace block ~ ~ ~ container.0 loot loot:items/stage/tutorial1
execute if block ~ ~ ~ minecraft:yellow_shulker_box{CustomName:"{\"text\":\"stage select page1\"}"} run loot replace block ~ ~ ~ container.1 loot loot:items/stage/tutorial2
execute if block ~ ~ ~ minecraft:yellow_shulker_box{CustomName:"{\"text\":\"stage select page1\"}"} run loot replace block ~ ~ ~ container.2 loot loot:items/stage/tutorial3
execute if block ~ ~ ~ minecraft:yellow_shulker_box{CustomName:"{\"text\":\"stage select page1\"}"} run loot replace block ~ ~ ~ container.3 loot loot:items/stage/stage1
execute if block ~ ~ ~ minecraft:yellow_shulker_box{CustomName:"{\"text\":\"stage select page1\"}"} run loot replace block ~ ~ ~ container.4 loot loot:items/stage/stage2
execute if block ~ ~ ~ minecraft:yellow_shulker_box{CustomName:"{\"text\":\"stage select page1\"}"} run loot replace block ~ ~ ~ container.5 loot loot:items/stage/stage3
execute if block ~ ~ ~ minecraft:yellow_shulker_box{CustomName:"{\"text\":\"stage select page1\"}"} run loot replace block ~ ~ ~ container.6 loot loot:items/stage/stage4
execute if block ~ ~ ~ minecraft:yellow_shulker_box{CustomName:"{\"text\":\"stage select page1\"}"} run loot replace block ~ ~ ~ container.7 loot loot:items/stage/stage5
execute if block ~ ~ ~ minecraft:yellow_shulker_box{CustomName:"{\"text\":\"stage select page1\"}"} run loot replace block ~ ~ ~ container.8 loot loot:items/stage/stage6
execute if entity @p[tag=debug,distance=..6] if block ~ ~ ~ minecraft:yellow_shulker_box{CustomName:"{\"text\":\"stage select page1\"}"} run loot replace block ~ ~ ~ container.17 loot loot:items/stage/debug1
execute if block ~ ~ ~ minecraft:yellow_shulker_box{CustomName:"{\"text\":\"stage select page1\"}"} run replaceitem block ~ ~ ~ container.18 minecraft:player_head{item-type:stage-select,stage:prev-page,SkullOwner:"MHF_ArrowLeft"}
execute if block ~ ~ ~ minecraft:yellow_shulker_box{CustomName:"{\"text\":\"stage select page1\"}"} run replaceitem block ~ ~ ~ container.26 minecraft:player_head{item-type:stage-select,stage:next-page,SkullOwner:"MHF_ArrowRight"}

execute if block ~ ~ ~ minecraft:yellow_shulker_box{CustomName:"{\"text\":\"confirmation\"}"} run loot replace block ~ ~ ~ container.12 loot loot:items/stage/cancel
execute if block ~ ~ ~ minecraft:yellow_shulker_box{CustomName:"{\"text\":\"confirmation\"}"} run loot replace block ~ ~ ~ container.14 loot loot:items/stage/ok

