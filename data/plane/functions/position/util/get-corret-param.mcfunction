#処理：rootにparam-corスコアの合計値を入れる
#入力：entity: plane-root
scoreboard players set @s max-speed-cor 0
scoreboard players operation @s max-speed-cor += @e[tag=target-parts,distance=..30] max-speed-cor

scoreboard players set @s accelerate-cor 0
scoreboard players operation @s accelerate-cor += @e[tag=target-parts,distance=..30] accelerate-cor

scoreboard players set @s pitch-speed-cor 0
scoreboard players operation @s pitch-speed-cor += @e[tag=target-parts,distance=..30] pitch-speed-cor

scoreboard players set @s yaw-speed-cor 0
scoreboard players operation @s yaw-speed-cor += @e[tag=target-parts,distance=..30] yaw-speed-cor

scoreboard players set @s roll-speed-cor 0
scoreboard players operation @s roll-speed-cor += @e[tag=target-parts,distance=..30] roll-speed-cor
