#> plane-data:tbf/tbf-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon tbf set value {base:{},additional:{}}
data modify storage voxel-planes:plane tbf set value {}

#飛行機データセット
data modify storage voxel-planes:plane tbf.plane-data.name set value tbf
data modify storage voxel-planes:plane tbf.plane-data.plane-type set value bomber
data modify storage voxel-planes:plane tbf.plane-data.tier set value 1
data modify storage voxel-planes:plane tbf.plane-data.flight-model.weight set value 7047
data modify storage voxel-planes:plane tbf.plane-data.flight-model.speed set value {max-speed:278f,cruise-speed:215f,climb-rate:5.46f,stall-speed:104.6f}
data modify storage voxel-planes:plane tbf.plane-data.flight-model.engine set value {type:recipro,horse-power:1700f,number:1}
data modify storage voxel-planes:plane tbf.plane-data.flight-model.turn-rate set value {pitch:24f,yaw:12f,roll:35.9f}
data modify storage voxel-planes:plane tbf.plane-data.flight-model.energy-loss-rate set value 0.8
data modify storage voxel-planes:plane tbf.plane-data.model-data.body set value {parking-cmd:183,rolling-cmd:184,flying-cmd:185}
data modify storage voxel-planes:plane tbf.plane-data.model-data.landing-pitch set value -11f
data modify storage voxel-planes:plane tbf.plane-data.model-data.scale set value [2f,2f,2f]
data modify storage voxel-planes:plane tbf.plane-data.model-data.translation set value [0f,-0.4f,2.3f]
data modify storage voxel-planes:plane tbf.plane-data.model-data.central-axis-offset set value 1.3
data modify storage voxel-planes:plane tbf.plane-data.seat.position.ridden set value {x:0,y:1,z:-4}
data modify storage voxel-planes:plane tbf.plane-data.seat.position.vacant set value {x:0,y:0,z:4}
data modify storage voxel-planes:plane tbf.plane-data.hitbox set value {}
data modify storage voxel-planes:plane tbf.plane-data.hitbox merge value {engine:{max-hp:150,offset:[0d,-0.5d,5.7d],width:1.2,height:1.2}}
data modify storage voxel-planes:plane tbf.plane-data.hitbox merge value {aileron-r:{max-hp:150,offset:[-4d,-0.9d,2.5d],width:2,height:2},aileron-l:{max-hp:150,offset:[4d,-0.9d,2.5d],width:2,height:2}}
data modify storage voxel-planes:plane tbf.plane-data.hitbox merge value {elevator-r:{max-hp:140,offset:[-2d,0.3d,-3.7d],width:1.4,height:1.4},elevator-l:{max-hp:140,offset:[2d,0.3d,-3.7d],width:1.4,height:1.4}}
data modify storage voxel-planes:plane tbf.plane-data.hitbox merge value {radder:{max-hp:130,offset:[0d,1.5d,-3.7d],width:1,height:1}}
data modify storage voxel-planes:plane tbf.plane-data.hitbox merge value {cockpit:{offset:[0d,1d,3.8d],width:0.5,height:0.5}}
data modify storage voxel-planes:plane tbf.plane-data.hitbox merge value {body:{max-hp:160,offset:[0d,-0.6d,0d],width:1.3,height:1.3}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon tbf.base.12p7mm.data set value {name:"12.7mm gun",type:gun,size:12p7mm,max-ammunition:310,current-ammunition:310,max-cooltime:2,current-cooltime:0,max-reload:140,current-reload:0,tracer:"lightblue",damage:13,speed:11,bullets:[{offset:[2.1d,1.4d,4.8d]},{offset:[-2.1d,1.4d,4.8d]}]}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon tbf.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:0,current-ammunition:0,max-reload:600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon tbf.additional.500lb set value [{kind:500lb,type:normal,offset:[0.2d,0d,3d],damage:1140,weight:227.0f,cmd:164}]
data modify storage voxel-planes:weapon tbf.additional.500lb append value {kind:500lb,type:normal,offset:[-0.2d,0d,3d],damage:1140,weight:227.0f,cmd:164}
data modify storage voxel-planes:weapon tbf.additional.500lb append value {kind:500lb,type:normal,offset:[0.2d,0.5d,3d],damage:1140,weight:227.0f,cmd:164}
data modify storage voxel-planes:weapon tbf.additional.500lb append value {kind:500lb,type:normal,offset:[-0.2d,0.5d,3d],damage:1140,weight:227.0f,cmd:164}

#魚雷データセット
data modify storage voxel-planes:weapon tbf.base.torpedo.data set value {name:torpedo,type:torpedo,max-ammunition:0,current-ammunition:0,max-reload:500,current-reload:0,torpedos:[]}
data modify storage voxel-planes:weapon tbf.additional.torpedo set value [{kind:1600lb,type:normal,offset:[1d,0.6d,0d],damage:3600,weight:680,cmd:52}]
