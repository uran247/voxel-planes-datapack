#> plane-data:hurricanemkiic/hurricanemkiic-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon hurricanemkiic set value {base:{},additional:{}}
data modify storage voxel-planes:plane hurricanemkiic set value {}

#飛行機データセット
data modify storage voxel-planes:plane hurricanemkiic.plane-data.name set value hurricanemkiic
data modify storage voxel-planes:plane hurricanemkiic.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane hurricanemkiic.plane-data.tier set value 2
data modify storage voxel-planes:plane hurricanemkiic.plane-data.flight-model.weight set value 3740f
data modify storage voxel-planes:plane hurricanemkiic.plane-data.flight-model.speed set value {max-speed:523f,cruise-speed:383f,climb-rate:14.1f,stall-speed:140f}
data modify storage voxel-planes:plane hurricanemkiic.plane-data.flight-model.engine set value {type:recipro,horse-power:1185f,number:1}
data modify storage voxel-planes:plane hurricanemkiic.plane-data.flight-model.turn-rate set value {pitch:42.4f,yaw:29.6f,roll:83f}
data modify storage voxel-planes:plane hurricanemkiic.plane-data.flight-model.energy-loss-rate set value 0.3f
data modify storage voxel-planes:plane hurricanemkiic.plane-data.model-data.body set value {parking-cmd:81,rolling-cmd:82,flying-cmd:83}
data modify storage voxel-planes:plane hurricanemkiic.plane-data.model-data.landing-pitch set value -10f
data modify storage voxel-planes:plane hurricanemkiic.plane-data.model-data.scale set value [12.2f,12.2f,12.2f]
data modify storage voxel-planes:plane hurricanemkiic.plane-data.model-data.translation set value [0f,0f,0f]
data modify storage voxel-planes:plane hurricanemkiic.plane-data.model-data.central-axis-offset set value 2.03
data modify storage voxel-planes:plane hurricanemkiic.plane-data.seat.position.ridden set value {x:0,y:0.5,z:-5}
data modify storage voxel-planes:plane hurricanemkiic.plane-data.seat.position.vacant set value {x:0,y:0,z:0}
data modify storage voxel-planes:plane hurricanemkiic.plane-data.hitbox set value {}
data modify storage voxel-planes:plane hurricanemkiic.plane-data.hitbox merge value {engine:{max-hp:80d,offset:[0d,-0.6d,2d],width:1f,height:1f}}
data modify storage voxel-planes:plane hurricanemkiic.plane-data.hitbox merge value {aileron-r:{max-hp:90d,offset:[-3d,-1d,0d],width:1.5f,height:1.5f},aileron-l:{max-hp:90d,offset:[3d,-1d,0d],width:1.5f,height:1.5f}}
data modify storage voxel-planes:plane hurricanemkiic.plane-data.hitbox merge value {elevator-r:{max-hp:65d,offset:[-1d,-0.2d,-5.2d],width:0.7f,height:0.7f},elevator-l:{max-hp:65d,offset:[1d,-0.2d,-5.2d],width:0.7f,height:0.7f}}
data modify storage voxel-planes:plane hurricanemkiic.plane-data.hitbox merge value {radder:{max-hp:65f,offset:[0d,0.3d,-5.5d],width:0.7f,height:0.7f}}
data modify storage voxel-planes:plane hurricanemkiic.plane-data.hitbox merge value {cockpit:{offset:[0d,0.5d,0.3d],width:0.4f,height:0.4f}}
data modify storage voxel-planes:plane hurricanemkiic.plane-data.hitbox merge value {body:{max-hp:100f,offset:[0d,-0.8d,0d],width:1f,height:1f}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon hurricanemkiic.base.gun set value {data:{name:"20mm gun",type:gun,size:20mm,max-ammunition:90,current-ammunition:90,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"yellow",damage:33,speed:10.5d,bullets:[{offset:[-1.83d,1.5d,2.3d]},{offset:[-2.46d,1.5d,2.3d]},{offset:[1.92d,1.5d,2.3d]},{offset:[2.52d,1.5d,2.3d]}]}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon hurricanemkiic.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:0,current-ammunition:0,max-reload:3600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon hurricanemkiic.additional.250lb set value [{kind:250lb,type:normal,offset:[-2.2d,-0.7d,0.3d],damage:560,weight:113,cmd:131}]
data modify storage voxel-planes:weapon hurricanemkiic.additional.250lb append value {kind:250lb,type:normal,offset:[2.2d,-0.7d,0.3d],damage:560,weight:113,cmd:131}
data modify storage voxel-planes:weapon hurricanemkiic.additional.500lb set value [{kind:500lb,type:normal,offset:[-2.2d,-0.8d,0.3d],damage:1125,weight:225,cmd:132}]
data modify storage voxel-planes:weapon hurricanemkiic.additional.500lb append value {kind:500lb,type:normal,offset:[2.2d,-0.8d,0.3d],damage:1125,weight:225,cmd:132}
