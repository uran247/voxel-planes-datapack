#> plane-data:swordfish/swordfish-storage
#
# @within function constructor:addstorage

#ストレージリセット
data modify storage voxel-planes:weapon swordfish set value {base:{},additional:{}}
data modify storage voxel-planes:plane swordfish set value {}

#飛行機データセット
data modify storage voxel-planes:plane swordfish.plane-data.plane-type set value bomber
data modify storage voxel-planes:plane swordfish.plane-data.tier set value 2
data modify storage voxel-planes:plane swordfish.plane-data.flight-model.weight set value 2690
data modify storage voxel-planes:plane swordfish.plane-data.flight-model.speed set value {max-speed:222f,cruise-speed:167f,climb-rate:5f,stall-speed:107f}
data modify storage voxel-planes:plane swordfish.plane-data.flight-model.engine set value {type:recipro,horse-power:750f,number:1}
data modify storage voxel-planes:plane swordfish.plane-data.flight-model.turn-rate set value {pitch:59f,yaw:50f,roll:60f}
data modify storage voxel-planes:plane swordfish.plane-data.flight-model.energy-loss-rate set value 0.2
data modify storage voxel-planes:plane swordfish.plane-data.model-data.body set value {parking-cmd:49,rolling-cmd:50,flying-cmd:50}
data modify storage voxel-planes:plane swordfish.plane-data.model-data.landing-pitch set value -12.0
data modify storage voxel-planes:plane swordfish.plane-data.hp set value {engine:70d,body:80,aileron:80,elevetor:50,radder:50}
data modify storage voxel-planes:plane swordfish.plane-data.hitbox set value {}
data modify storage voxel-planes:plane swordfish.plane-data.hitbox merge value {engine:{max-hp:90d,offset:[0d,-0.1d,5.2d]}}
data modify storage voxel-planes:plane swordfish.plane-data.hitbox merge value {aileron-r:{max-hp:100d,offset:[-3.8d,0.1d,2.9d]},aileron-l:{max-hp:100d,offset:[3.8d,0.1d,2.9d]}}
data modify storage voxel-planes:plane swordfish.plane-data.hitbox merge value {elevator-r:{max-hp:100d,offset:[-1.2d,0.2d,-4d]},elevator-l:{max-hp:100d,offset:[1.2d,0.2d,-4d]}}
data modify storage voxel-planes:plane swordfish.plane-data.hitbox merge value {radder:{max-hp:80d,offset:[0d,1.2d,-3.9d]}}
data modify storage voxel-planes:plane swordfish.plane-data.hitbox merge value {cockpit:{max-hp:80d,offset:[0d,0.8d,3d]}}
data modify storage voxel-planes:plane swordfish.plane-data.hitbox merge value {body:{max-hp:120d,offset:[0d,-0.5d,1d]}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon swordfish.base.gun set value {data:{name:"7.7mm gun",type:gun,size:7p7mm,max-ammunition:600,current-ammunition:600,max-cooltime:1,current-cooltime:0,max-reload:140,current-reload:0,tracer:"lightblue",damage:9,speed:9.6d,bullets:[{offset:[-0.6d,2.2d,4.3d]}]}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon swordfish.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:3,current-ammunition:3,max-reload:500,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon swordfish.base.bomb.data.bombs append value {kind:250lb,type:normal,offset:[-3.3d,-0.9d,2.4d],damage:560,weight:113,cmd:131}
data modify storage voxel-planes:weapon swordfish.base.bomb.data.bombs append value {kind:250lb,type:normal,offset:[3.3d,-0.9d,2.4d],damage:560,weight:113,cmd:131}
data modify storage voxel-planes:weapon swordfish.base.bomb.data.bombs append value {kind:500lb,type:normal,offset:[-2.8d,-0.9d,2.3d],damage:1100,weight:227,cmd:132}
data modify storage voxel-planes:weapon swordfish.base.bomb.data.bombs append value {kind:500lb,type:normal,offset:[2.8d,-0.9d,2.3d],damage:1100,weight:227,cmd:132}

#魚雷ロケット弾データセット
data modify storage voxel-planes:weapon swordfish.base.torpedo.data set value {name:torpedo,type:torpedo,max-ammunition:0,current-ammunition:0,max-reload:500,current-reload:0,torpedos:[]}
data modify storage voxel-planes:weapon swordfish.additional.torpedo set value [{kind:1600lb,type:normal,offset:[1d,-0.4d,0d],damage:3600,weight:680,cmd:52}]
