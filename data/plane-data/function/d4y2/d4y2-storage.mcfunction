#> plane-data:d4y2/d4y2-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon d4y2 set value {base:{},additional:{}}
data modify storage voxel-planes:plane d4y2 set value {}

#飛行機データセット
data modify storage voxel-planes:plane d4y2.plane-data.plane-type set value bomber
data modify storage voxel-planes:plane d4y2.plane-data.tier set value 2
data modify storage voxel-planes:plane d4y2.plane-data.flight-model.weight set value 3670
data modify storage voxel-planes:plane d4y2.plane-data.flight-model.speed set value {max-speed:579.7f,cruise-speed:426f,climb-rate:11.5f,stall-speed:138f}
data modify storage voxel-planes:plane d4y2.plane-data.flight-model.engine set value {type:recipro,horse-power:1400f,number:1}
data modify storage voxel-planes:plane d4y2.plane-data.flight-model.turn-rate set value {pitch:32f,yaw:20f,roll:120f}
data modify storage voxel-planes:plane d4y2.plane-data.flight-model.energy-loss-rate set value 0.6
data modify storage voxel-planes:plane d4y2.plane-data.model-data.body set value {parking-cmd:27,rolling-cmd:28,flying-cmd:29}
data modify storage voxel-planes:plane d4y2.plane-data.model-data.landing-pitch set value -13.0
data modify storage voxel-planes:plane d4y2.plane-data.model-data.scale set value [1f,1f,1f]
data modify storage voxel-planes:plane d4y2.plane-data.model-data.translation set value [0f,-0.5f,0.7f]
data modify storage voxel-planes:plane d4y2.plane-data.model-data.central-axis-offset set value 1.375
data modify storage voxel-planes:plane d4y2.plane-data.seat.position.ridden set value {x:0,y:0,z:-2.2}
data modify storage voxel-planes:plane d4y2.plane-data.seat.position.vacant set value {x:0,y:-0.4,z:3}
data modify storage voxel-planes:plane d4y2.plane-data.hp set value {engine:90d,body:120d,aileron:100d,elevetor:80d,radder:80d}
data modify storage voxel-planes:plane d4y2.plane-data.hitbox set value {}
data modify storage voxel-planes:plane d4y2.plane-data.hitbox merge value {body:{max-hp:120d,offset:[0d,-0.7d,0d],width:1,height:1}}
data modify storage voxel-planes:plane d4y2.plane-data.hitbox merge value {engine:{max-hp:90d,offset:[0d,-0.5d,5.6d],width:1.1,height:1.1}}
data modify storage voxel-planes:plane d4y2.plane-data.hitbox merge value {aileron-r:{max-hp:100d,offset:[-3.1d,-0.9d,3.4d],width:1.5,height:1.5},aileron-l:{max-hp:100d,offset:[3.1d,-0.9d,3.4d],width:1.5,height:1.5}}
data modify storage voxel-planes:plane d4y2.plane-data.hitbox merge value {elevator-r:{max-hp:80d,offset:[-1.4d,-0.2d,-1.9d],width:0.9,height:0.9},elevator-l:{max-hp:80d,offset:[1.4d,-0.2d,-1.9d],width:0.9,height:0.9}}
data modify storage voxel-planes:plane d4y2.plane-data.hitbox merge value {radder:{max-hp:80d,offset:[0d,0.5d,-2.3d],width:0.9,height:0.9}}
data modify storage voxel-planes:plane d4y2.plane-data.hitbox merge value {cockpit:{offset:[0d,0.6d,4.2d],width:0.4,height:0.4}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon d4y2.base.gun set value {data:{name:"7.7mm gun",type:gun,size:7p7mm,max-ammunition:400,current-ammunition:400,max-cooltime:1,current-cooltime:0,max-reload:140,current-reload:0,tracer:"lightblue",damage:11,speed:9.5d,bullets:[{offset:[0.11d,-1.85d,-6.1d]},{offset:[-0.4d,-1.85d,-6.1d]}]}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon d4y2.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:3,current-ammunition:3,max-reload:500,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon d4y2.base.bomb.data.bombs append value {kind:60kg,type:normal,offset:[-3.1d,-0.7d,3.3d],damage:300,weight:60,cmd:76}
data modify storage voxel-planes:weapon d4y2.base.bomb.data.bombs append value {kind:60kg,type:normal,offset:[3.1d,-0.7d,3.3d],damage:300,weight:60,cmd:76}
data modify storage voxel-planes:weapon d4y2.base.bomb.data.bombs append value {kind:250kg,type:normal,offset:[0d,-0.8d,3d],damage:1250,weight:250,cmd:77}
data modify storage voxel-planes:weapon d4y2.additional.500kg set value [{kind:500kg,type:normal,offset:[0d,-0.7d,3d],damage:2500,weight:500,cmd:105}]

#デフォルトロケット弾データセット
data modify storage voxel-planes:weapon d4y2.base.rocket.data set value {name:rocket,type:rocket,max-ammunition:4,current-ammunition:4,max-reload:500,current-reload:0,rockets:[]}
data modify storage voxel-planes:weapon d4y2.additional.aa-rocket set value [{type:normal,damage:50,offset:[-3.1d,-0.5d,3.3d],weight:10,kind:10kg,cmd:106}]
data modify storage voxel-planes:weapon d4y2.additional.aa-rocket append value {type:normal,damage:50,offset:[3.1d,-0.5d,3.3d],weight:10,kind:10kg,cmd:106}
data modify storage voxel-planes:weapon d4y2.additional.aa-rocket append value {type:normal,damage:50,offset:[-3.5d,-0.5d,3.3d],weight:10,kind:10kg,cmd:106}
data modify storage voxel-planes:weapon d4y2.additional.aa-rocket append value {type:normal,damage:50,offset:[3.5d,-0.5d,3.3d],weight:10,kind:10kg,cmd:106}
