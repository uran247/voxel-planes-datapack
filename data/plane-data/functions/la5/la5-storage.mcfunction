#> plane-data:la5/la5-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon la5 set value {base:{},additional:{}}
data modify storage voxel-planes:plane la5 set value {}

#飛行機データセット
data modify storage voxel-planes:plane la5.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane la5.plane-data.tier set value 3
data modify storage voxel-planes:plane la5.plane-data.flight-model.weight set value 3168
data modify storage voxel-planes:plane la5.plane-data.flight-model.speed set value {max-speed:648.0f,cruise-speed:390.0f,climb-rate:16.7,stall-speed:155.0f}
data modify storage voxel-planes:plane la5.plane-data.flight-model.engine set value {type:recipro,horse-power:1960,number:1}
data modify storage voxel-planes:plane la5.plane-data.flight-model.turn-rate set value {pitch:38.9f,yaw:23.3f,roll:147.5f}
data modify storage voxel-planes:plane la5.plane-data.flight-model.energy-loss-rate set value 0.4
data modify storage voxel-planes:plane la5.plane-data.model-data.body set value {parking-cmd:59,rolling-cmd:60,flying-cmd:61}
data modify storage voxel-planes:plane la5.plane-data.model-data.landing-pitch set value -12
data modify storage voxel-planes:plane la5.plane-data.hitbox set value {}
data modify storage voxel-planes:plane la5.plane-data.hitbox merge value {engine:{max-hp:190d,offset:[0d,0d,2.7d]}}
data modify storage voxel-planes:plane la5.plane-data.hitbox merge value {aileron-r:{max-hp:220d,offset:[-2.7d,0d,0.5d]},aileron-l:{max-hp:220d,offset:[2.7d,0d,0.5d]}}
data modify storage voxel-planes:plane la5.plane-data.hitbox merge value {elevator-r:{max-hp:170d,offset:[-1.3d,0.1d,-4.2d]},elevator-l:{max-hp:170d,offset:[1.3d,0.1d,-4.2d]}}
data modify storage voxel-planes:plane la5.plane-data.hitbox merge value {radder:{max-hp:180d,offset:[-0.1d,1d,-4.6d]}}
data modify storage voxel-planes:plane la5.plane-data.hitbox merge value {body:{max-hp:220d,offset:[0d,0d,0d]}}
data modify storage voxel-planes:plane la5.plane-data.hitbox merge value {cockpit:{offset:[0d,0.7d,1.1d]}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon la5.base.gun set value {data:{name:"20mm gun",type:gun,size:20mm,max-ammunition:170,current-ammunition:170,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"yellow",damage:55,speed:9.9d,bullets:[{offset:[-0.35d,2d,2.8d]},{offset:[0.2d,2d,2.8d]}]}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon la5.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:2,current-ammunition:2,max-reload:3600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon la5.additional.50kg set value [{kind:50kg,type:bomb,offset:[-2.5d,-0.6d,0d],damage:250,weight:50,cmd:202}]
data modify storage voxel-planes:weapon la5.additional.50kg append value {kind:50kg,type:bomb,offset:[2.5d,-0.6d,0d],damage:250,weight:50,cmd:202}


##デフォルトロケット弾データセット
#data modify storage voxel-planes:weapon la5.base.rocket.data set value {name:rocket,type:rocket,max-ammunition:0,current-ammunition:0,max-reload:$RELOAD_TIME,current-reload:0,rockets:[]}
#data modify storage voxel-planes:weapon la5.additional.$ADDITIONAL_WEAPOM set value [{kind:$WEPAON_KIND,type:$ROCKET_TYPE,offset:[$X,$Y,$Z],damage:$DAMAGE,weight:$WEPAON_WEIGHT,cmd:$WEAPON_CMD}]