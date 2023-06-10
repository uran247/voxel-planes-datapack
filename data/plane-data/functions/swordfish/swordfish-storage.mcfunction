#> plane-data:swordfish/swordfish-storage
#
# @within tag/function constructor:add-storage

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
data modify storage voxel-planes:plane swordfish.plane-data.model-data.scale set value [2f,2f,2f]
data modify storage voxel-planes:plane swordfish.plane-data.model-data.translation set value [0f,0.3f,-2.8f]
data modify storage voxel-planes:plane swordfish.plane-data.hp set value {engine:70d,body:80d,aileron:80d,elevetor:50d,radder:50d}
data modify storage voxel-planes:plane swordfish.plane-data.model-data.central-axis-offset set value 1.5
data modify storage voxel-planes:plane swordfish.plane-data.hitbox set value {}
data modify storage voxel-planes:plane swordfish.plane-data.hitbox merge value {engine:{max-hp:70d,offset:[0d,-0.4d,4.2d],width:1.2,height:1.2}}
data modify storage voxel-planes:plane swordfish.plane-data.hitbox merge value {aileron-r:{max-hp:80d,offset:[-3.8d,-0.5d,2.3d],width:1.8,height:1.8},aileron-l:{max-hp:80d,offset:[3.8d,-0.5d,2.3d],width:1.8,height:1.8}}
data modify storage voxel-planes:plane swordfish.plane-data.hitbox merge value {elevator-r:{max-hp:50d,offset:[-1.2d,-0.3d,-4.4d],width:1.3,height:1.3},elevator-l:{max-hp:50d,offset:[1.2d,-0.3d,-4.4d],width:1.3,height:1.3}}
data modify storage voxel-planes:plane swordfish.plane-data.hitbox merge value {radder:{max-hp:50d,offset:[0d,0.6d,-4.3d],width:1.3,height:1.3}}
data modify storage voxel-planes:plane swordfish.plane-data.hitbox merge value {cockpit:{offset:[0d,1d,3d],width:0.4,height:0.4}}
data modify storage voxel-planes:plane swordfish.plane-data.hitbox merge value {body:{max-hp:80,offset:[0d,-0.4d,0d],width:1.2,height:1.2}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon swordfish.base.gun set value {data:{name:"7.7mm gun",type:gun,size:7p7mm,max-ammunition:600,current-ammunition:600,max-cooltime:1,current-cooltime:0,max-reload:140,current-reload:0,tracer:"lightblue",damage:9,speed:9.6d,bullets:[{offset:[-0.6d,2.2d,4.3d]}]}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon swordfish.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:3,current-ammunition:3,max-reload:500,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon swordfish.base.bomb.data.bombs append value {kind:250lb,type:normal,offset:[-3.3d,-1d,2.2d],damage:560,weight:113,cmd:131}
data modify storage voxel-planes:weapon swordfish.base.bomb.data.bombs append value {kind:250lb,type:normal,offset:[3.3d,-1d,2.2d],damage:560,weight:113,cmd:131}
data modify storage voxel-planes:weapon swordfish.base.bomb.data.bombs append value {kind:500lb,type:normal,offset:[-2.8d,-1d,2.2d],damage:1100,weight:227,cmd:132}
data modify storage voxel-planes:weapon swordfish.base.bomb.data.bombs append value {kind:500lb,type:normal,offset:[2.8d,-1d,2.2d],damage:1100,weight:227,cmd:132}

#魚雷データセット
data modify storage voxel-planes:weapon swordfish.base.torpedo.data set value {name:torpedo,type:torpedo,max-ammunition:0,current-ammunition:0,max-reload:500,current-reload:0,torpedos:[]}
data modify storage voxel-planes:weapon swordfish.additional.torpedo set value [{kind:1600lb,type:normal,offset:[1d,-0.4d,0d],damage:3600,weight:680,cmd:52}]
