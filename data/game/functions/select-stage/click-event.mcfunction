#UI内のクリックされたアイテムを検知してイベント
execute store result score #tutorial1 reg1 run clear @s #tags:stage-select{stage:2147483647}
execute store result score #tutorial2 reg1 run clear @s #tags:stage-select{stage:2147483646}
execute store result score #tutorial3 reg1 run clear @s #tags:stage-select{stage:2147483645}
execute store result score #debug1 reg1 run clear @s #tags:stage-select{stage:2147483644}
execute store result score #stage1 reg1 run clear @s #tags:stage-select{stage:1}
execute store result score #stage2 reg1 run clear @s #tags:stage-select{stage:2}
execute store result score #stage3 reg1 run clear @s #tags:stage-select{stage:3}
execute store result score #stage4 reg1 run clear @s #tags:stage-select{stage:4}
execute store result score #stage5 reg1 run clear @s #tags:stage-select{stage:5}
execute store result score #stage6 reg1 run clear @s #tags:stage-select{stage:6}
execute store result score #next-page reg1 run clear @s #tags:stage-select{stage:next-page}
execute store result score #prev-page reg1 run clear @s #tags:stage-select{stage:prev-page}
execute store result score #cancel reg1 run clear @s #tags:stage-select{stage:cancel}
execute store result score #ok reg1 run clear @s #tags:stage-select{stage:ok}

#ステージを選択
execute unless block ~ ~ ~ minecraft:yellow_shulker_box{CustomName:"{\"text\":\"confirmation\"}"} run scoreboard players set #global stage-id 0
execute if score #tutorial1 reg1 matches 1.. run scoreboard players set #global stage-id 2147483647
execute if score #tutorial2 reg1 matches 1.. run scoreboard players set #global stage-id 2147483646
execute if score #tutorial3 reg1 matches 1.. run scoreboard players set #global stage-id 2147483645
execute if score #debug1 reg1 matches 1.. run scoreboard players set #global stage-id 2147483644
execute if score #stage1 reg1 matches 1.. run scoreboard players set #global stage-id 1
execute if score #stage2 reg1 matches 1.. run scoreboard players set #global stage-id 2
execute if score #stage3 reg1 matches 1.. run scoreboard players set #global stage-id 3
execute if score #stage4 reg1 matches 1.. run scoreboard players set #global stage-id 4
execute if score #stage5 reg1 matches 1.. run scoreboard players set #global stage-id 5
execute if score #stage6 reg1 matches 1.. run scoreboard players set #global stage-id 6

#yes/no画面へ遷移
execute if score #global stage-id matches 1.. run data merge block ~ ~ ~ {CustomName:"{\"text\":\"confirmation\"}"}

#stage選択画面へ遷移
execute if score #cancel reg1 matches 1.. run data merge block ~ ~ ~ {CustomName:"{\"text\":\"stage select page1\"}"}
execute if score #cancel reg1 matches 1.. run scoreboard players set #global stage-id 0

#game開始
execute if score #ok reg1 matches 1.. run data merge block ~ ~ ~ {CustomName:"{\"text\":\"stage select page1\"}"}
execute if score #ok reg1 matches 1.. run function game:start-game/start-game
