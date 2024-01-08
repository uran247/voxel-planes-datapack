#> plane-data:saab29f/saab29f-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon saab29f set value {base:{},additional:{}}
data modify storage voxel-planes:plane saab29f set value {}

#飛行機データセット
data modify storage voxel-planes:plane saab29f.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane saab29f.plane-data.tier set value 5
data modify storage voxel-planes:plane saab29f.plane-data.flight-model.weight set value 6060
data modify storage voxel-planes:plane saab29f.plane-data.flight-model.speed set value {max-speed:1060f,cruise-speed:800f,climb-rate:32.1f,stall-speed:200f}
data modify storage voxel-planes:plane saab29f.plane-data.flight-model.engine set value {type:jet,thrust:2270f,wep-thrust:2800f,number:1,max-wep-time:1200,wep-time:1200,wep-reload:0,max-wep-reload:1200}
data modify storage voxel-planes:plane saab29f.plane-data.flight-model.turn-rate set value {pitch:25f,yaw:17.5f,roll:163.6f}
data modify storage voxel-planes:plane saab29f.plane-data.flight-model.energy-loss-rate set value 0.5
data modify storage voxel-planes:plane saab29f.plane-data.model-data.body set value {parking-cmd:211,rolling-cmd:211,flying-cmd:212}
data modify storage voxel-planes:plane saab29f.plane-data.model-data.landing-pitch set value -1
data modify storage voxel-planes:plane saab29f.plane-data.model-data.scale set value [1f,1f,1f]
data modify storage voxel-planes:plane saab29f.plane-data.model-data.translation set value [0f,-0.5f,0f]
data modify storage voxel-planes:plane saab29f.plane-data.model-data.central-axis-offset set value 1.375
data modify storage voxel-planes:plane saab29f.plane-data.model-data.afterburner set value [{scale:[0.5f,0.5f,1.8f],translation:[-0.25f,-0.4f,-8f]}]
data modify storage voxel-planes:plane saab29f.plane-data.hitbox set value {}
data modify storage voxel-planes:plane saab29f.plane-data.hitbox merge value {engine:{max-hp:200,offset:[0d,-0.5d,-3d],width:1.2,height:1.2}}
data modify storage voxel-planes:plane saab29f.plane-data.hitbox merge value {aileron-r:{max-hp:200,offset:[-3d,-0.4d,-2.8d],width:1.5,height:1.5},aileron-l:{max-hp:200,offset:[3d,-0.4d,-2.8d],width:1.5,height:1.5}}
data modify storage voxel-planes:plane saab29f.plane-data.hitbox merge value {elevator-r:{max-hp:170,offset:[-1d,0.8d,-7.6d],width:1,height:1},elevator-l:{max-hp:170,offset:[1d,0.8d,-7.6d],width:1,height:1}}
data modify storage voxel-planes:plane saab29f.plane-data.hitbox merge value {radder:{max-hp:180,offset:[0d,1.7d,-7.3d],width:0.8,height:0.8}}
data modify storage voxel-planes:plane saab29f.plane-data.hitbox merge value {cockpit:{offset:[0d,0.8d,0d],width:0.5,height:0.5}}
data modify storage voxel-planes:plane saab29f.plane-data.hitbox merge value {body:{max-hp:220,offset:[0d,-0.6d,-1d],width:1.2,height:1.2}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon saab29f.base.gun set value {data:{name:"20mm",type:gun,size:20mm,max-ammunition:180,current-ammunition:180,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"yellow",damage:150,speed:10.5f,bullets:[{offset:[-0.3d,0.9d,1.9d]},{offset:[-0.2d,0.7d,1.6d]},{offset:[0.3d,0.9d,1.9d]},{offset:[0.2d,0.7d,1.6d]}]}}

#デフォルト爆弾データセット
#data modify storage voxel-planes:weapon saab29f.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:0,current-ammunition:0,max-reload:$RELOAD_TIME,current-reload:0,bombs:[]}
#data modify storage voxel-planes:weapon saab29f.additional.$ADDITIONAL_WEAPOM set value [{kind:$WEPAON_KIND,type:$BOMB_TYPE,offset:[$X,$Y,$Z],damage:$DAMAGE,weight:$WEPAON_WEIGHT,cmd:$WEAPON_CMD}]

#デフォルトロケット弾データセット
data modify storage voxel-planes:weapon saab29f.base.rocket.data set value {name:rocket,type:rocket,max-ammunition:0,current-ammunition:0,max-reload:1200,current-reload:0,rockets:[]}
data modify storage voxel-planes:weapon saab29f.additional.ag-rocket set value [{type:normal,offset:[3d,0.1d,-2.5d],damage:500,weight:8f,kind:10kg,cmd:216}]
data modify storage voxel-planes:weapon saab29f.additional.ag-rocket append value {type:normal,damage:500,offset:[3d,0d,-2.4d],weight:8f,kind:10kg,cmd:216}
data modify storage voxel-planes:weapon saab29f.additional.ag-rocket append value {type:normal,damage:500,offset:[3d,-0.1d,-2.3d],weight:8f,kind:10kg,cmd:216}
data modify storage voxel-planes:weapon saab29f.additional.ag-rocket append value {type:normal,damage:500,offset:[3d,-0.2d,-2.2d],weight:8f,kind:10kg,cmd:216}
data modify storage voxel-planes:weapon saab29f.additional.ag-rocket append value {type:normal,damage:500,offset:[2.6d,0.1d,-2.3d],weight:8f,kind:10kg,cmd:216}
data modify storage voxel-planes:weapon saab29f.additional.ag-rocket append value {type:normal,damage:500,offset:[2.6d,0d,-2.2d],weight:8f,kind:10kg,cmd:216}
data modify storage voxel-planes:weapon saab29f.additional.ag-rocket append value {type:normal,damage:500,offset:[2.6d,-0.1d,-2.1d],weight:8f,kind:10kg,cmd:216}
data modify storage voxel-planes:weapon saab29f.additional.ag-rocket append value {type:normal,damage:500,offset:[2.6d,-0.2d,-2d],weight:8f,kind:10kg,cmd:216}
data modify storage voxel-planes:weapon saab29f.additional.ag-rocket append value {type:normal,damage:500,offset:[2.2d,0.1d,-2.1d],weight:8f,kind:10kg,cmd:216}
data modify storage voxel-planes:weapon saab29f.additional.ag-rocket append value {type:normal,damage:500,offset:[2.2d,0d,-2d],weight:8f,kind:10kg,cmd:216}
data modify storage voxel-planes:weapon saab29f.additional.ag-rocket append value {type:normal,damage:500,offset:[2.2d,-0.1d,-1.9d],weight:8f,kind:10kg,cmd:216}
data modify storage voxel-planes:weapon saab29f.additional.ag-rocket append value {type:normal,damage:500,offset:[2.2d,-0.2d,-1.8d],weight:8f,kind:10kg,cmd:216}
data modify storage voxel-planes:weapon saab29f.additional.ag-rocket append value {type:normal,damage:500,offset:[-3d,0.1d,-2.5d],weight:8f,kind:10kg,cmd:216}
data modify storage voxel-planes:weapon saab29f.additional.ag-rocket append value {type:normal,damage:500,offset:[-3d,0d,-2.4d],weight:8f,kind:10kg,cmd:216}
data modify storage voxel-planes:weapon saab29f.additional.ag-rocket append value {type:normal,damage:500,offset:[-3d,-0.1d,-2.3d],weight:8f,kind:10kg,cmd:216}
data modify storage voxel-planes:weapon saab29f.additional.ag-rocket append value {type:normal,damage:500,offset:[-3d,-0.2d,-2.2d],weight:8f,kind:10kg,cmd:216}
data modify storage voxel-planes:weapon saab29f.additional.ag-rocket append value {type:normal,damage:500,offset:[-2.6d,0.1d,-2.3d],weight:8f,kind:10kg,cmd:216}
data modify storage voxel-planes:weapon saab29f.additional.ag-rocket append value {type:normal,damage:500,offset:[-2.6d,0d,-2.2d],weight:8f,kind:10kg,cmd:216}
data modify storage voxel-planes:weapon saab29f.additional.ag-rocket append value {type:normal,damage:500,offset:[-2.6d,-0.1d,-2.1d],weight:8f,kind:10kg,cmd:216}
data modify storage voxel-planes:weapon saab29f.additional.ag-rocket append value {type:normal,damage:500,offset:[-2.6d,-0.2d,-2d],weight:8f,kind:10kg,cmd:216}
data modify storage voxel-planes:weapon saab29f.additional.ag-rocket append value {type:normal,damage:500,offset:[-2.2d,0.1d,-2.1d],weight:8f,kind:10kg,cmd:216}
data modify storage voxel-planes:weapon saab29f.additional.ag-rocket append value {type:normal,damage:500,offset:[-2.2d,0d,-2d],weight:8f,kind:10kg,cmd:216}
data modify storage voxel-planes:weapon saab29f.additional.ag-rocket append value {type:normal,damage:500,offset:[-2.2d,-0.1d,-1.9d],weight:8f,kind:10kg,cmd:216}
data modify storage voxel-planes:weapon saab29f.additional.ag-rocket append value {type:normal,damage:500,offset:[-2.2d,-0.2d,-1.8d],weight:8f,kind:10kg,cmd:216}

#デフォルトミサイルデータセット
data modify storage voxel-planes:weapon saab29f.base.missile.data set value {name:missile,type:ir-missile,max-ammunition:2,current-ammunition:2,max-reload:600,current-reload:0,lockon-time:0,missiles:[]}
data modify storage voxel-planes:weapon saab29f.additional.missile set value [{kind:70kg,type:ir-missile,offset:[-3f,0f,-2.5f],damage:730,weight:70,cmd:174,turn-rate:9.6f,max-speed:7.2f}]
data modify storage voxel-planes:weapon saab29f.additional.missile append value {kind:70kg,type:ir-missile,offset:[3f,0f,-2.5f],damage:730,weight:70,cmd:174,turn-rate:9.6f,max-speed:7.2f}