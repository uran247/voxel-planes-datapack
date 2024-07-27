#> util:fix-missing-entity

execute unless entity 0-0-0-0-1 run summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity],UUID:[I;0,0,0,1]} 
execute unless entity 0-0-0-0-2 run summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity],UUID:[I;0,0,0,2]}
execute unless entity 0-0-0-0-3 run summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity],UUID:[I;0,0,0,3]}
execute unless entity 0-0-0-0-4 run summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity],UUID:[I;0,0,0,4]}
execute unless entity 0-0-0-0-5 run summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity],UUID:[I;0,0,0,5]}
execute unless entity 0-0-0-0-6 run summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity],UUID:[I;0,0,0,6]}
execute unless entity 0-0-0-0-7 run summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity],UUID:[I;0,0,0,7]}
execute unless entity 0-0-0-0-8 run summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity],UUID:[I;0,0,0,8]}
execute unless entity 0-0-0-0-9 run summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity],UUID:[I;0,0,0,9]}
execute unless entity 0-0-0-0-a run summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity],UUID:[I;0,0,0,10]}
execute unless entity 0-0-0-0-b run summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity],UUID:[I;0,0,0,11]}
execute unless entity 0-0-0-0-c run summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity,dummy-sun],UUID:[I;0,0,0,11]}

execute unless entity @e[tag=block-checker,distance=..1,x=0,y=1,z=0] run summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity,block-checker]}