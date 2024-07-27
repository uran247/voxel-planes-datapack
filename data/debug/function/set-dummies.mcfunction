#> debug:set-dummies

execute at @p[tag=plane-rider] positioned ~ 200 ~ positioned ^-20 ^ ^100 run function debug:summon-dummy-plane
execute at @p[tag=plane-rider] positioned ~ 200 ~ positioned ^ ^ ^120 run function debug:summon-dummy-plane
execute at @p[tag=plane-rider] positioned ~ 200 ~ positioned ^20 ^ ^100 run function debug:summon-dummy-plane

execute at @p[tag=plane-rider] run tellraw @a [{"text": "飛行機が召喚されました","color": "yellow"}]