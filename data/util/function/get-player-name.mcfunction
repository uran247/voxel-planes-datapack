#> util:get-player-name
#
# @input
#   as @p
# @output
#   storage voxel-planes:return return.name
#
# @public

# 初期化
data remove storage voxel-planes:return return
data merge block 0 1 0 {Items:[]}

# プレイヤーヘッド経由でプレイヤーの名前取得
loot replace block 0 1 0 container.0 loot util:get-player-name
data modify storage voxel-planes:return return.name set from block 0 1 0 Items[{Slot:0b}].components."minecraft:profile".name
    #tellraw @p [{"nbt":"Items[{Slot:0b}].components.\"minecraft:profile\".name","block":"0 1 0"}]
    #tellraw @p [{"nbt":"return","storage":"voxel-planes:return"}]

# reset
data merge block 0 1 0 {Items:[]}
