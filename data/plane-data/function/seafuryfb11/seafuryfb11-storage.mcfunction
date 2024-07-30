#> plane-data:seafuryfb11/seafuryfb11-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon seafuryfb11 set value {base:{},additional:{}}
data modify storage voxel-planes:plane seafuryfb11 set value {}

#飛行機データセット
data modify storage voxel-planes:plane seafuryfb11.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane seafuryfb11.plane-data.tier set value 4
data modify storage voxel-planes:plane seafuryfb11.plane-data.flight-model.weight set value 5602
data modify storage voxel-planes:plane seafuryfb11.plane-data.flight-model.speed set value {max-speed:740f,cruise-speed:426f,climb-rate:21.9f,stall-speed:161f}
data modify storage voxel-planes:plane seafuryfb11.plane-data.flight-model.engine set value {type:recipro,horse-power:2480f,number:1}
data modify storage voxel-planes:plane seafuryfb11.plane-data.flight-model.turn-rate set value {pitch:36f,yaw:24f,roll:180f}
data modify storage voxel-planes:plane seafuryfb11.plane-data.flight-model.energy-loss-rate set value 0.5
data modify storage voxel-planes:plane seafuryfb11.plane-data.model-data.body set value {parking-cmd:125,rolling-cmd:126,flying-cmd:127}
data modify storage voxel-planes:plane seafuryfb11.plane-data.model-data.landing-pitch set value -14.0
data modify storage voxel-planes:plane seafuryfb11.plane-data.model-data.scale set value [1f,1f,1f]
data modify storage voxel-planes:plane seafuryfb11.plane-data.model-data.translation set value [0f,-0.5f,0f]
data modify storage voxel-planes:plane seafuryfb11.plane-data.seat.position.ridden set value {x:0,y:0,z:-3.5}
data modify storage voxel-planes:plane seafuryfb11.plane-data.seat.position.vacant set value {x:0,y:-0.4,z:1}
data modify storage voxel-planes:plane seafuryfb11.plane-data.hp set value {engine:220d,body:250d,aileron:200d,elevetor:200d,radder:210d}
data modify storage voxel-planes:plane seafuryfb11.plane-data.model-data.central-axis-offset set value 1.375
data modify storage voxel-planes:plane seafuryfb11.plane-data.hitbox set value {}
data modify storage voxel-planes:plane seafuryfb11.plane-data.hitbox merge value {body:{max-hp:250d,offset:[0d,-0.4d,0d],width:1.1,height:1.1}}
data modify storage voxel-planes:plane seafuryfb11.plane-data.hitbox merge value {engine:{max-hp:220d,offset:[0d,-0.5d,4.3d],width:1.1,height:1.1}}
data modify storage voxel-planes:plane seafuryfb11.plane-data.hitbox merge value {aileron-r:{max-hp:200d,offset:[-3.6d,-1.3d,2.3d],width:1.6,height:1.6},aileron-l:{max-hp:200d,offset:[3.6d,-1.3d,2.3d],width:1.6,height:1.6}}
data modify storage voxel-planes:plane seafuryfb11.plane-data.hitbox merge value {elevator-r:{max-hp:200d,offset:[-1.2d,0d,-3.6d],width:1,height:1},elevator-l:{max-hp:200d,offset:[1.2d,0d,-3.6d],width:1,height:1}}
data modify storage voxel-planes:plane seafuryfb11.plane-data.hitbox merge value {radder:{max-hp:210d,offset:[0d,1d,-4d],width:1,height:1}}
data modify storage voxel-planes:plane seafuryfb11.plane-data.hitbox merge value {cockpit:{offset:[0d,0.7d,1.4d],width:0.5,height:0.5}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon seafuryfb11.base.20mm.data set value {name:"20mm gun",type:gun,size:20mm,max-ammunition:145,current-ammunition:145,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"orange",damage:88,speed:11d,bullets:[{offset:[1.95d,0.9d,4d]},{offset:[-1.95d,0.9d,4d]},{offset:[2.25d,0.9d,4.1d]},{offset:[-2.25d,0.9d,4.1d]}]}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon seafuryfb11.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:2,current-ammunition:2,max-reload:3600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon seafuryfb11.additional.1000lb set value [{kind:1000lb,type:normal,offset:[-3.1d,-0.9d,2.2d],damage:2300,weight:454,cmd:133}]
data modify storage voxel-planes:weapon seafuryfb11.additional.1000lb append value {kind:1000lb,type:normal,offset:[3.1d,-0.9d,2.2d],damage:2300,weight:454,cmd:133}

#デフォルトロケット弾データセット
data modify storage voxel-planes:weapon seafuryfb11.base.rocket.data set value {name:rocket,type:rocket,max-ammunition:12,current-ammunition:12,max-reload:600,current-reload:0,rockets:[]}
data modify storage voxel-planes:weapon seafuryfb11.additional.ag-rocket set value [{type:normal,damage:300,offset:[3.4d,-0.74d,2.3d],weight:36.0f,kind:10kg,cmd:134}]
data modify storage voxel-planes:weapon seafuryfb11.additional.ag-rocket append value {type:normal,damage:300,offset:[3.1d,-0.77d,2.3d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon seafuryfb11.additional.ag-rocket append value {type:normal,damage:300,offset:[2.8d,-0.80d,2.3d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon seafuryfb11.additional.ag-rocket append value {type:normal,damage:300,offset:[-3.4d,-0.74d,2.3d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon seafuryfb11.additional.ag-rocket append value {type:normal,damage:300,offset:[-3.1d,-0.77d,2.3d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon seafuryfb11.additional.ag-rocket append value {type:normal,damage:300,offset:[-2.8d,-0.80d,2.3d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon seafuryfb11.additional.ag-rocket append value {type:normal,damage:300,offset:[3.4d,-0.94d,2.3d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon seafuryfb11.additional.ag-rocket append value {type:normal,damage:300,offset:[3.1d,-0.97d,2.3d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon seafuryfb11.additional.ag-rocket append value {type:normal,damage:300,offset:[2.8d,-1.00d,2.3d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon seafuryfb11.additional.ag-rocket append value {type:normal,damage:300,offset:[-3.4d,-0.94d,2.3d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon seafuryfb11.additional.ag-rocket append value {type:normal,damage:300,offset:[-3.1d,-0.97d,2.3d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon seafuryfb11.additional.ag-rocket append value {type:normal,damage:300,offset:[-2.8d,-1.00d,2.3d],weight:36.0f,kind:10kg,cmd:134}
