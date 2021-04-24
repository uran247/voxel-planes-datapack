#> plane-data:fireflymkv/fireflymkv-storage
#
# @within function constructor:addstorage

#ストレージリセット
data modify storage voxel-planes:weapon fireflymkv set value {base:{},additional:{}}
data modify storage voxel-planes:plane fireflymkv set value {}

#飛行機データセット
data modify storage voxel-planes:plane fireflymkv.plane-data.plane-type set value attacker
data modify storage voxel-planes:plane fireflymkv.plane-data.tier set value 3
data modify storage voxel-planes:plane fireflymkv.plane-data.flight-model.weight set value 4388
data modify storage voxel-planes:plane fireflymkv.plane-data.flight-model.speed set value {max-speed:621f,cruise-speed:336f,climb-rate:7.1f,stall-speed:157f}
data modify storage voxel-planes:plane fireflymkv.plane-data.flight-model.engine set value {type:recipro,horse-power:2300f,number:1}
data modify storage voxel-planes:plane fireflymkv.plane-data.flight-model.turn-rate set value {pitch:27f,yaw:18f,roll:101f}
data modify storage voxel-planes:plane fireflymkv.plane-data.flight-model.energy-loss-rate set value 0.6
data modify storage voxel-planes:plane fireflymkv.plane-data.model-data.body set value {parking-cmd:38,rolling-cmd:39,flying-cmd:40}
data modify storage voxel-planes:plane fireflymkv.plane-data.model-data.landing-pitch set value -12.5
data modify storage voxel-planes:plane fireflymkv.plane-data.hp set value {engine:130d,body:140d,aileron:140d,elevetor:120d,radder:120d}
data modify storage voxel-planes:plane fireflymkv.plane-data.hitbox set value {}
data modify storage voxel-planes:plane fireflymkv.plane-data.hitbox merge value {engine:{offset:[0.3d,0d,4.5d]}}
data modify storage voxel-planes:plane fireflymkv.plane-data.hitbox merge value {body:{offset:[0.3d,0d,0d]}}
data modify storage voxel-planes:plane fireflymkv.plane-data.hitbox merge value {aileron-r:{offset:[-2.9d,-0.5d,2.2d]},aileron-l:{offset:[3.5d,-0.5d,2.2d]}}
data modify storage voxel-planes:plane fireflymkv.plane-data.hitbox merge value {elevator-r:{offset:[-1d,0.2d,-3.6d]},elevator-l:{offset:[1.6d,0.2d,-3.6d]}}
data modify storage voxel-planes:plane fireflymkv.plane-data.hitbox merge value {radder:{offset:[0.3d,1.3d,-3d]}}
data modify storage voxel-planes:plane fireflymkv.plane-data.hitbox merge value {cockpit:{offset:[0.3d,0.7d,1.1d]}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon fireflymkv.base.gun.data set value {name:"20mm gun",type:gun,size:20mm,max-ammunition:160,current-ammunition:160,max-cooltime:2,current-cooltime:0,max-reload:220,current-reload:0,tracer:"lightblue",damage:73,speed:11d,bullets:[{offset:[-2.7d,0.9d,4.6d]},{offset:[2.7d,0.9d,4.6d]},{offset:[-3d,0.95d,4.6d]},{offset:[3d,0.95d,4.6d]}]}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon fireflymkv.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:2,current-ammunition:2,max-reload:900,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon fireflymkv.additional.500kg set value [{kind:1000lb,type:normal,offset:[-2.9d,-1d,2.4d],damage:2300,weight:454.0f,cmd:133}]
data modify storage voxel-planes:weapon fireflymkv.additional.500kg append value {kind:1000lb,type:normal,offset:[2.9d,-1d,2.4d],damage:2300,weight:454.0f,cmd:133}

#デフォルトロケット弾データセット
data modify storage voxel-planes:weapon fireflymkv.base.rocket.data set value {name:rocket,type:rocket,max-ammunition:16,current-ammunition:16,max-reload:600,current-reload:0,rockets:[]}
data modify storage voxel-planes:weapon fireflymkv.additional.ag-rocket set value [{type:normal,damage:300,offset:[3.7d,-0.74d,2.8d],weight:36.0f,kind:10kg,cmd:134}]
data modify storage voxel-planes:weapon fireflymkv.additional.ag-rocket append value {type:normal,damage:300,offset:[3.4d,-0.77d,2.8d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon fireflymkv.additional.ag-rocket append value {type:normal,damage:300,offset:[3.1d,-0.80d,2.8d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon fireflymkv.additional.ag-rocket append value {type:normal,damage:300,offset:[2.8d,-0.83d,2.8d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon fireflymkv.additional.ag-rocket append value {type:normal,damage:300,offset:[-3.7d,-0.74d,2.8d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon fireflymkv.additional.ag-rocket append value {type:normal,damage:300,offset:[-3.4d,-0.77d,2.8d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon fireflymkv.additional.ag-rocket append value {type:normal,damage:300,offset:[-3.1d,-0.80d,2.8d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon fireflymkv.additional.ag-rocket append value {type:normal,damage:300,offset:[-2.8d,-0.83d,2.8d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon fireflymkv.additional.ag-rocket append value {type:normal,damage:300,offset:[3.7d,-0.94d,2.8d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon fireflymkv.additional.ag-rocket append value {type:normal,damage:300,offset:[3.4d,-0.97d,2.8d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon fireflymkv.additional.ag-rocket append value {type:normal,damage:300,offset:[3.1d,-1.00d,2.8d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon fireflymkv.additional.ag-rocket append value {type:normal,damage:300,offset:[2.8d,-1.03d,2.8d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon fireflymkv.additional.ag-rocket append value {type:normal,damage:300,offset:[-3.7d,-0.94d,2.8d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon fireflymkv.additional.ag-rocket append value {type:normal,damage:300,offset:[-3.4d,-0.97d,2.8d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon fireflymkv.additional.ag-rocket append value {type:normal,damage:300,offset:[-3.1d,-1.00d,2.8d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon fireflymkv.additional.ag-rocket append value {type:normal,damage:300,offset:[-2.8d,-1.03d,2.8d],weight:36.0f,kind:10kg,cmd:134}
