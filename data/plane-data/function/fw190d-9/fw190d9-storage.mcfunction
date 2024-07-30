#> plane-data:fw190d-9/fw190d9-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon fw190d9 set value {base:{},additional:{}}
data modify storage voxel-planes:plane fw190d9 set value {}

#飛行機データセット
data modify storage voxel-planes:plane fw190d9.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane fw190d9.plane-data.tier set value 4
data modify storage voxel-planes:plane fw190d9.plane-data.flight-model.weight set value 4270
data modify storage voxel-planes:plane fw190d9.plane-data.flight-model.speed set value {max-speed:685f,cruise-speed:450f,climb-rate:17f,stall-speed:180f}
data modify storage voxel-planes:plane fw190d9.plane-data.flight-model.engine set value {type:recipro,horse-power:1750f,number:1}
data modify storage voxel-planes:plane fw190d9.plane-data.flight-model.turn-rate set value {pitch:38f,yaw:22f,roll:260f}
data modify storage voxel-planes:plane fw190d9.plane-data.flight-model.energy-loss-rate set value 0.5
data modify storage voxel-planes:plane fw190d9.plane-data.model-data.body set value {parking-cmd:4,rolling-cmd:5,flying-cmd:6}
data modify storage voxel-planes:plane fw190d9.plane-data.model-data.landing-pitch set value -12.0
data modify storage voxel-planes:plane fw190d9.plane-data.model-data.scale set value [1f,1f,1f]
data modify storage voxel-planes:plane fw190d9.plane-data.model-data.translation set value [0f,-0.5f,1f]
data modify storage voxel-planes:plane fw190d9.plane-data.model-data.central-axis-offset set value 1.625
data modify storage voxel-planes:plane fw190d9.plane-data.hp set value {engine:400d,body:440d,aileron:320d,elevetor:280d,radder:280d}
data modify storage voxel-planes:plane fw190d9.plane-data.seat.position.ridden set value {x:0,y:0,z:-3.5}
data modify storage voxel-planes:plane fw190d9.plane-data.seat.position.vacant set value {x:0,y:-0.4,z:1}
data modify storage voxel-planes:plane fw190d9.plane-data.hitbox set value {}
data modify storage voxel-planes:plane fw190d9.plane-data.hitbox merge value {body:{max-hp:440d,offset:[0d,-0.4d,0d],width:1.1,height:1.1}}
data modify storage voxel-planes:plane fw190d9.plane-data.hitbox merge value {engine:{max-hp:400d,offset:[0d,-0.4d,3d],width:1.1,height:1.1}}
data modify storage voxel-planes:plane fw190d9.plane-data.hitbox merge value {aileron-r:{max-hp:320d,offset:[-3.2d,-0.6d,1.4d],width:1.2,height:1.2},aileron-l:{max-hp:320d,offset:[3.2d,-0.6d,1.4d],width:1.2,height:1.2}}
data modify storage voxel-planes:plane fw190d9.plane-data.hitbox merge value {elevator-r:{max-hp:280d,offset:[-1d,0.2d,-3.9d],width:0.6,height:0.6},elevator-l:{max-hp:280d,offset:[1d,0.2d,-3.9d],width:0.6,height:0.6}}
data modify storage voxel-planes:plane fw190d9.plane-data.hitbox merge value {radder:{max-hp:280d,offset:[0d,0.6d,-4.4d],width:0.8,height:0.8}}
data modify storage voxel-planes:plane fw190d9.plane-data.hitbox merge value {cockpit:{offset:[0d,0.6d,1.1d],width:0.4,height:0.4}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon fw190d9.base.20mm.data set value {name:"20mm gun",type:gun,size:20mm,max-ammunition:250,current-ammunition:250,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"lightgreen",damage:90,speed:9d,bullets:[{offset:[0.96d,-0.1d,2.2d]},{offset:[-1d,-0.1d,2.2d]}]}
data modify storage voxel-planes:weapon fw190d9.base.13mm.data set value {name:"13mm gun",type:gun,size:13mm,max-ammunition:450,current-ammunition:450,max-cooltime:1,current-cooltime:0,max-reload:220,current-reload:0,tracer:"lightblue",damage:8,speed:11,bullets:[{offset:[0.09d,1d,1.9d]},{offset:[-0.15d,1d,1.9d]}]}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon fw190d9.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:1,current-ammunition:1,max-reload:3600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon fw190d9.additional.500kg set value [{kind:500kg,type:normal,offset:[0d,-0.7d,1.3d],damage:2500,weight:500,cmd:124}]

