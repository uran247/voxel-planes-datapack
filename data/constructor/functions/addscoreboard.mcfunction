#自由に使える変数
scoreboard objectives add reg1 dummy
scoreboard objectives add reg2 dummy
scoreboard objectives add reg3 dummy

#定数
scoreboard objectives add Num dummy

#計算関連
scoreboard objectives add cos dummy
scoreboard objectives add sin dummy
scoreboard objectives add tan dummy
scoreboard objectives add atan dummy
scoreboard objectives add rand dummy

#関数入力、戻り値
scoreboard objectives add input1 dummy
scoreboard objectives add input dummy
scoreboard objectives add return dummy

#飛行機操縦中、武器のパラメータ
scoreboard objectives add AngX dummy
scoreboard objectives add AngY dummy
scoreboard objectives add AngZ dummy
scoreboard objectives add AngX-old dummy
scoreboard objectives add AngY-old dummy
scoreboard objectives add AngZ-old dummy
scoreboard objectives add PosX dummy
scoreboard objectives add PosY dummy
scoreboard objectives add PosZ dummy
scoreboard objectives add displacementX dummy
scoreboard objectives add displacementY dummy
scoreboard objectives add displacementZ dummy
scoreboard objectives add speedX dummy
scoreboard objectives add speedY dummy
scoreboard objectives add speedZ dummy
scoreboard objectives add speed dummy
scoreboard objectives add age dummy
scoreboard objectives add rolling dummy
scoreboard objectives add plane-key-input dummy
scoreboard objectives add plane-weapon dummy
scoreboard objectives add rightClick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add plane-parts dummy
scoreboard objectives add radder dummy
scoreboard objectives add elevetor dummy
scoreboard objectives add aileron dummy
scoreboard objectives add engine dummy
scoreboard objectives add body dummy
scoreboard objectives add max-engine dummy
scoreboard objectives add ammo-reload1 dummy
scoreboard objectives add ammo-reload2 dummy
scoreboard objectives add ammo-reload3 dummy
scoreboard objectives add ammo-reload4 dummy
scoreboard objectives add ammo-reload6 dummy
scoreboard objectives add ammo-reload5 dummy
scoreboard objectives add throttle dummy
scoreboard objectives add yaw-gap dummy
scoreboard objectives add pitch-gap dummy

#武器関連
scoreboard objectives add max-age dummy
scoreboard objectives add w1-reload dummy
scoreboard objectives add w2-reload dummy
scoreboard objectives add w3-reload dummy
scoreboard objectives add w4-reload dummy
scoreboard objectives add w5-reload dummy
scoreboard objectives add w6-reload dummy
scoreboard objectives add torp-speed dummy
scoreboard objectives add fall-speed dummy
scoreboard objectives add damage dummy
scoreboard objectives add torp-damage dummy
scoreboard objectives add enable-weapon dummy

#飛行機パラメータ
scoreboard objectives add plane-id dummy
scoreboard objectives add pitch-speed dummy
scoreboard objectives add yaw-speed dummy
scoreboard objectives add roll-speed dummy
scoreboard objectives add landing-pitch dummy
scoreboard objectives add landing-yaw dummy
scoreboard objectives add landing-roll dummy
scoreboard objectives add max-speed dummy
scoreboard objectives add cruise-speed dummy
scoreboard objectives add stall-speed dummy
scoreboard objectives add takeoff-speed dummy
scoreboard objectives add max-speed-cor dummy
scoreboard objectives add accelerate-cor dummy
scoreboard objectives add pitch-speed-cor dummy
scoreboard objectives add yaw-speed-cor dummy
scoreboard objectives add roll-speed-cor dummy
scoreboard objectives add accelerate dummy
scoreboard objectives add deaccelerate dummy
scoreboard objectives add resistance dummy
scoreboard objectives add energy-loss dummy
scoreboard objectives add parking-udvm dummy
scoreboard objectives add rolling-udvm dummy
scoreboard objectives add flying-udvm dummy
scoreboard objectives add plpr-start-max dummy
scoreboard objectives add plpr-start-min dummy
scoreboard objectives add plpr-stop-max dummy
scoreboard objectives add plpr-stop-min dummy
scoreboard objectives add gear-retract-max dummy
scoreboard objectives add gear-retract-min dummy
scoreboard objectives add gear-pullout-min dummy
scoreboard objectives add gear-pullout-max dummy
scoreboard objectives add weapon-types dummy
scoreboard objectives add ammunition1 dummy
scoreboard objectives add ammunition2 dummy
scoreboard objectives add ammunition3 dummy
scoreboard objectives add ammunition4 dummy
scoreboard objectives add ammunition5 dummy
scoreboard objectives add ammunition6 dummy
scoreboard objectives add max-ammunition1 dummy
scoreboard objectives add max-ammunition2 dummy
scoreboard objectives add max-ammunition3 dummy
scoreboard objectives add max-ammunition4 dummy
scoreboard objectives add max-ammunition5 dummy
scoreboard objectives add max-ammunition6 dummy
scoreboard objectives add offsetX dummy
scoreboard objectives add offsetY dummy
scoreboard objectives add offsetZ dummy
scoreboard objectives add new-offsetX dummy
scoreboard objectives add new-offsetY dummy
scoreboard objectives add new-offsetZ dummy
scoreboard objectives add max-ammo-reload1 dummy
scoreboard objectives add max-ammo-reload2 dummy
scoreboard objectives add max-ammo-reload3 dummy
scoreboard objectives add max-ammo-reload4 dummy
scoreboard objectives add max-ammo-reload5 dummy
scoreboard objectives add max-ammo-reload6 dummy

#ダメージ関連
scoreboard objectives add taken-damage dummy
scoreboard objectives add total-damage dummy
scoreboard objectives add shootdown dummy {"text":"スコア"}

#その他
scoreboard objectives add time dummy

#storage作成
data merge storage minecraft:plane-datapack {temporary:{Pos:[0d,2.0d,0d]}}