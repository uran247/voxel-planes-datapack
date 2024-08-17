#> plane-data:hunterf6/hunterf6-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon hunterf6 set value {base:{},additional:{}}
data modify storage voxel-planes:plane hunterf6 set value {}

#飛行機データセット
data modify storage voxel-planes:plane hunterf6.plane-data.name set value hunterf6
data modify storage voxel-planes:plane hunterf6.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane hunterf6.plane-data.tier set value 5
data modify storage voxel-planes:plane hunterf6.plane-data.flight-model.weight set value 8050
data modify storage voxel-planes:plane hunterf6.plane-data.flight-model.speed set value {max-speed:1150f,cruise-speed:898.2f,climb-rate:87f,stall-speed:230f}
data modify storage voxel-planes:plane hunterf6.plane-data.flight-model.engine set value {type:jet,thrust:4601.7f,number:1}
data modify storage voxel-planes:plane hunterf6.plane-data.flight-model.turn-rate set value {pitch:29f,yaw:17f,roll:155f}
data modify storage voxel-planes:plane hunterf6.plane-data.flight-model.energy-loss-rate set value 0.6
data modify storage voxel-planes:plane hunterf6.plane-data.model-data.body set value {parking-cmd:199,rolling-cmd:199,flying-cmd:200}
data modify storage voxel-planes:plane hunterf6.plane-data.model-data.landing-pitch set value 0
data modify storage voxel-planes:plane hunterf6.plane-data.model-data.scale set value [14f,14f,14f]
data modify storage voxel-planes:plane hunterf6.plane-data.model-data.translation set value [0f,-0.4f,0f]
data modify storage voxel-planes:plane hunterf6.plane-data.model-data.central-axis-offset set value 1.587
data modify storage voxel-planes:plane hunterf6.plane-data.seat.position.ridden set value {x:0,y:0.5,z:-6.5}
data modify storage voxel-planes:plane hunterf6.plane-data.seat.position.vacant set value {x:0,y:0,z:4}
data modify storage voxel-planes:plane hunterf6.plane-data.hitbox set value {}
data modify storage voxel-planes:plane hunterf6.plane-data.hitbox merge value {engine:{max-hp:200d,offset:[0d,-0.2d,-3d],width:1f,height:1f}}
data modify storage voxel-planes:plane hunterf6.plane-data.hitbox merge value {aileron-r:{max-hp:190d,offset:[-2.7d,-0.5d,-1.5d],width:1.5f,height:1.5f},aileron-l:{max-hp:190d,offset:[2.7d,-0.5d,-1.5d],width:1.5f,height:1.5f}}
data modify storage voxel-planes:plane hunterf6.plane-data.hitbox merge value {elevator-r:{max-hp:170d,offset:[-1d,0.7d,-7d],width:0.7f,height:0.7f},elevator-l:{max-hp:170d,offset:[1d,0.7d,-7d],width:0.7f,height:0.7f}}
data modify storage voxel-planes:plane hunterf6.plane-data.hitbox merge value {radder:{max-hp:180dd,offset:[0d,1.7d,-6.7d],width:0.7f,height:0.7f}}
data modify storage voxel-planes:plane hunterf6.plane-data.hitbox merge value {cockpit:{offset:[0d,0.5d,3.7d],width:0.4f,height:0.4f}}
data modify storage voxel-planes:plane hunterf6.plane-data.hitbox merge value {body:{max-hp:220d,offset:[0d,-0.5d,0d],width:1.2f,height:1.2f}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon hunterf6.base.gun set value {data:{name:"30mm",type:gun,size:30mm,max-ammunition:150,current-ammunition:150,max-cooltime:2,current-cooltime:0,max-reload:800,current-reload:0,tracer:"lightgreen",damage:220,speed:9.3f,bullets:[{offset:[0.4d,1.1d,4.6d]},{offset:[-0.3d,1.1d,4.6d]},{offset:[-0.35d,1.1d,4.3d]},{offset:[0.45d,1.1d,4.3d]}]}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon hunterf6.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:0,current-ammunition:0,max-reload:3600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon hunterf6.additional.1000lb set value [{kind:1000lb,type:normal,offset:[3d,-0.3d,-1.3d],damage:2250,weight:450.0f,cmd:133}]
data modify storage voxel-planes:weapon hunterf6.additional.1000lb append value {kind:1000lb,type:normal,offset:[-3d,-0.3d,-1.3d],damage:2250,weight:450.0f,cmd:133}

#デフォルトミサイルデータセット
data modify storage voxel-planes:weapon hunterf6.base.missile.data set value {name:missile,type:ir-missile,max-ammunition:2,current-ammunition:2,max-reload:600,current-reload:0,lockon-time:0,missiles:[]}
data modify storage voxel-planes:weapon hunterf6.additional.missile set value [{kind:70kg,type:ir-missile,offset:[-3d,-0.3d,-1.3d],damage:730,weight:70,cmd:174,turn-rate:9.6f,max-speed:10.6f,seeker-sight-chord:0.518f,missile-target-angle-chord:0.518f}]
data modify storage voxel-planes:weapon hunterf6.additional.missile append value {kind:70kg,type:ir-missile,offset:[3d,-0.3d,-1.3d],damage:730,weight:70,cmd:174,turn-rate:9.6f,max-speed:10.6f,seeker-sight-chord:0.518f,missile-target-angle-chord:0.518f}