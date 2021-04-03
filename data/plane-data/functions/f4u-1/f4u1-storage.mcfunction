#> plane-data:f4u-1/f4u1-storage
#
# @within function constructor:addstorage

data modify storage voxel-planes:weapon f4u1 set value {base:{},additional:{}}
data modify storage voxel-planes:plane f4u1 set value {}

#飛行機データセット
data modify storage voxel-planes:plane f4u1.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane f4u1.plane-data.tier set value 2
data modify storage voxel-planes:plane f4u1.plane-data.weight set value 4800.0
data modify storage voxel-planes:plane f4u1.plane-data.flight-model.speed set value {max-speed:671f,cruise-speed:353f,climb-rate:15.2f,stall-speed:146f}
data modify storage voxel-planes:plane f4u1.plane-data.flight-model.engine set value {type:recipro,horse-power:2000f,number:1}
data modify storage voxel-planes:plane f4u1.plane-data.flight-model.turn-rate set value {pitch:34f,yaw:18f,roll:92f}
data modify storage voxel-planes:plane f4u1.plane-data.flight-model.energy-loss-rate set value 0.6
data modify storage voxel-planes:plane f4u1.plane-data.model-data.body set value {flying-cmd:1,rolling-cmd:2,parking-cmd:3}
data modify storage voxel-planes:plane f4u1.plane-data.model-data.landing-pitch set value -12.0
data modify storage voxel-planes:plane f4u1.plane-data.hp set value {engine:300d,body:330d,aileron:240d,elevetor:210d,radder:210d}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon f4u1.base.gun set value {data:{name:"12.7mm gun",type:gun,size:12p7mm,max-ammunition:400,current-ammunition:400,max-cooltime:2,current-cooltime:0,max-reload:220,current-reload:0,tracer:"lightblue",damage:38,speed:11d,bullets:[{offset:[2.93d,-0.56d,3.6d]},{offset:[3.12d,-0.53d,3.6d]},{offset:[3.3d,-0.5d,3.6d]},{offset:[-2.38d,-0.56d,3.6d]},{offset:[-2.57d,-0.53d,0.36d]},{offset:[-2.75d,-0.5d,3.6d]}]}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon f4u1.base.bomb set value {data:{name:bomb,type:bomb,max-ammunition:2,current-ammunition:2,max-reload:3600,current-reload:0,bombs:[]}}
data modify storage voxel-planes:weapon f4u1.additional set value {500kg:[{weight:1000lb,type:normal,offset:[-0.4d,-1d,2.1d],damage:2300,acc-cor:-5,pitch-cor:-8,yaw-cor:-4,cmd:122},{weight:1000lb,type:normal,offset:[1.2d,-1d,2.1d],damage:2300,acc-cor:-5,pitch-cor:-8,yaw-cor:-4,cmd:122}]}

#デフォルトロケット弾データセット
data modify storage voxel-planes:weapon f4u1.base.rocket set value {data:{name:rocket,type:rocket,max-ammunition:8,current-ammunition:8,max-reload:1200,current-reload:0,rockets:[]}}
data modify storage voxel-planes:weapon f4u1.additional merge value {ag-rocket:[{type:normal,damage:500,offset:[2.9d,-1d,2.8d],acc-cor:-1,pitch-cor:-1,yaw-cor:-1,weight:10kg,cmd:66},{type:normal,damage:500,offset:[3.3d,-0.91d,2.8d],acc-cor:-1,pitch-cor:-1,yaw-cor:-1,weight:10kg,cmd:66},{type:normal,damage:500,offset:[3.7d,-0.82d,2.8d],acc-cor:-1,pitch-cor:-1,yaw-cor:-1,weight:10kg,cmd:66},{type:normal,damage:500,offset:[4.1d,-0.73d,2.8d],acc-cor:-1,pitch-cor:-1,yaw-cor:-1,weight:10kg,cmd:66},{type:normal,damage:500,offset:[-2.9d,-1d,2.8d],acc-cor:-1,pitch-cor:-1,yaw-cor:-1,weight:10kg,cmd:66},{type:normal,damage:500,offset:[-3.3d,-0.91d,2.8d],acc-cor:-1,pitch-cor:-1,yaw-cor:-1,weight:10kg,cmd:66},{type:normal,damage:500,offset:[-3.7d,-0.82d,2.8d],acc-cor:-1,pitch-cor:-1,yaw-cor:-1,weight:10kg,cmd:66},{type:normal,damage:500,offset:[-4.1d,-0.73,2.8d],acc-cor:-1,pitch-cor:-1,yaw-cor:-1,weight:10kg,cmd:66}]}
