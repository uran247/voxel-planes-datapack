#処理：rootにparam-corスコアの合計値を入れる
#入力：entity: plane-root
scoreboard players set @s vp.max-speed-cor 0
scoreboard players operation @s vp.max-speed-cor += @e[tag=target-parts,distance=..30] vp.max-speed-cor

scoreboard players set @s vp.acc-cor 0
scoreboard players operation @s vp.acc-cor += @e[tag=target-parts,distance=..30] vp.acc-cor

scoreboard players set @s vp.pitch-spd-cor 0
scoreboard players operation @s vp.pitch-spd-cor += @e[tag=target-parts,distance=..30] vp.pitch-spd-cor

scoreboard players set @s vp.yaw-spd-cor 0
scoreboard players operation @s vp.yaw-spd-cor += @e[tag=target-parts,distance=..30] vp.yaw-spd-cor

scoreboard players set @s vp.roll-spd-cor 0
scoreboard players operation @s vp.roll-spd-cor += @e[tag=target-parts,distance=..30] vp.roll-spd-cor
