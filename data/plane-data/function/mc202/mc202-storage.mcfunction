#> plane-data:mc202/mc202-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon mc202 set value {base:{},additional:{}}
data modify storage voxel-planes:plane mc202 set value {}

#飛行機データセット
data modify storage voxel-planes:plane mc202.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane mc202.plane-data.tier set value 2
data modify storage voxel-planes:plane mc202.plane-data.flight-model.weight set value 2700
data modify storage voxel-planes:plane mc202.plane-data.flight-model.speed set value {max-speed:600f,cruise-speed:440f,climb-rate:18.1f,stall-speed:139f}
data modify storage voxel-planes:plane mc202.plane-data.flight-model.engine set value {type:recipro,horse-power:1159,number:1}
data modify storage voxel-planes:plane mc202.plane-data.flight-model.turn-rate set value {pitch:40f,yaw:26.4,roll:300}
data modify storage voxel-planes:plane mc202.plane-data.flight-model.energy-loss-rate set value 0.5
data modify storage voxel-planes:plane mc202.plane-data.model-data.body set value {parking-cmd:13,rolling-cmd:14,flying-cmd:15}
data modify storage voxel-planes:plane mc202.plane-data.model-data.landing-pitch set value -14.5
data modify storage voxel-planes:plane mc202.plane-data.model-data.scale set value [1f,1f,1f]
data modify storage voxel-planes:plane mc202.plane-data.model-data.translation set value [0f,-0.5f,0.7f]
data modify storage voxel-planes:plane mc202.plane-data.model-data.central-axis-offset set value 1.375
data modify storage voxel-planes:plane mc202.plane-data.seat.position.ridden set value {x:0,y:0,z:-4.5}
data modify storage voxel-planes:plane mc202.plane-data.seat.position.vacant set value {x:0,y:-0.3,z:-0.6}
data modify storage voxel-planes:plane mc202.plane-data.hitbox set value {}
data modify storage voxel-planes:plane mc202.plane-data.hitbox merge value {engine:{max-hp:90d,offset:[0d,-0.3d,2.5d],width:1,height:1}}
data modify storage voxel-planes:plane mc202.plane-data.hitbox merge value {aileron-r:{max-hp:100d,offset:[-2.6d,-0.8d,1d],width:1.2,height:1.2},aileron-l:{max-hp:100d,offset:[2.6d,-0.8d,1d],width:1.2,height:1.2}}
data modify storage voxel-planes:plane mc202.plane-data.hitbox merge value {elevator-r:{max-hp:80d,offset:[-1d,-0.2d,-3.6d],width:0.8,height:0.8},elevator-l:{max-hp:80d,offset:[1d,-0.2d,-3.6d],width:0.8,height:0.8}}
data modify storage voxel-planes:plane mc202.plane-data.hitbox merge value {radder:{max-hp:90d,offset:[0d,0.6d,-3.8d],width:0.8,height:0.8}}
data modify storage voxel-planes:plane mc202.plane-data.hitbox merge value {cockpit:{offset:[0d,0.5d,0d],width:0.6,height:0.6}}
data modify storage voxel-planes:plane mc202.plane-data.hitbox merge value {body:{max-hp:110,offset:[0d,-0.5d,0d],width:1,height:1}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon mc202.base.12p7mm set value {data:{name:"12.7mm gun",type:gun,size:12p7mm,max-ammunition:400,current-ammunition:400,max-cooltime:2,current-cooltime:0,max-reload:210,current-reload:0,tracer:"lightblue",damage:19,speed:9.5d,bullets:[{offset:[-2d,1.5d,1.5d]},{offset:[2d,1.5d,1.5d]}]}}
data modify storage voxel-planes:weapon mc202.base.7p7mm set value {data:{name:"7.7mm gun",type:gun,size:7p7mm,max-ammunition:500,current-ammunition:500,max-cooltime:1,current-cooltime:0,max-reload:140,current-reload:0,tracer:"lightgreen",damage:14,speed:9d,bullets:[{offset:[-0.2d,2.1d,2d]},{offset:[0.1d,2.1d,2d]}]}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon mc202.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:2,current-ammunition:2,max-reload:3600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon mc202.additional.50kg set value [{kind:50kg,type:normal,offset:[-2.6d,-0.4d,0.7d],damage:250,weight:50,cmd:123}]
data modify storage voxel-planes:weapon mc202.additional.50kg append value {kind:50kg,type:normal,offset:[2.6d,-0.4d,0.7d],damage:250,weight:50,cmd:123}
