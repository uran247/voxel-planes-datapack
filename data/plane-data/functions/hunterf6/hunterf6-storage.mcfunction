#> plane-data:hunterf6/hunterf6-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon hunterf6 set value {base:{},additional:{}}
data modify storage voxel-planes:plane hunterf6 set value {}

#飛行機データセット
data modify storage voxel-planes:plane hunterf6.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane hunterf6.plane-data.tier set value 5
data modify storage voxel-planes:plane hunterf6.plane-data.flight-model.weight set value 8050
data modify storage voxel-planes:plane hunterf6.plane-data.flight-model.speed set value {max-speed:1150f,cruise-speed:898.2f,climb-rate:87f,stall-speed:230f}
data modify storage voxel-planes:plane hunterf6.plane-data.flight-model.engine set value {type:jet,thrust:4601.7f,number:1}
data modify storage voxel-planes:plane hunterf6.plane-data.flight-model.turn-rate set value {pitch:29f,yaw:17f,roll:155f}
data modify storage voxel-planes:plane hunterf6.plane-data.flight-model.energy-loss-rate set value 0.6
data modify storage voxel-planes:plane hunterf6.plane-data.model-data.body set value {parking-cmd:199,rolling-cmd:199,flying-cmd:200}
data modify storage voxel-planes:plane hunterf6.plane-data.model-data.landing-pitch set value 0
data modify storage voxel-planes:plane hunterf6.plane-data.hitbox set value {}
data modify storage voxel-planes:plane hunterf6.plane-data.hitbox merge value {engine:{max-hp:200d,offset:[0,0,0]}}
data modify storage voxel-planes:plane hunterf6.plane-data.hitbox merge value {aileron-r:{max-hp:190d,offset:[-2.5d,1d,0d]},aileron-l:{max-hp:190d,offset:[2.5d,1d,0d]}}
data modify storage voxel-planes:plane hunterf6.plane-data.hitbox merge value {elevator-r:{max-hp:170d,offset:[-0.8d,1.5d,-6d]},elevator-l:{max-hp:170d,offset:[0.8d,1.5d,-6d]}}
data modify storage voxel-planes:plane hunterf6.plane-data.hitbox merge value {radder:{max-hp:180dd,offset:[0d,3d,-5d]}}
data modify storage voxel-planes:plane hunterf6.plane-data.hitbox merge value {cockpit:{offset:[0d,1.5d,2d]}}
data modify storage voxel-planes:plane hunterf6.plane-data.hitbox merge value {body:{max-hp:220d,offset:[0d,0d,0d]}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon hunterf6.base.gun set value {data:{name:"30mm",type:gun,size:30mm,max-ammunition:150,current-ammunition:150,max-cooltime:2,current-cooltime:0,max-reload:800,current-reload:0,tracer:"lightgreen",damage:220,speed:9.3f,bullets:[{offset:[0.1d,0d,5d]},{offset:[0.2d,0d,5d]},{offset:[-0.1d,0d,5d]},{offset:[-0.2d,0d,5d]}]}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon hunterf6.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:0,current-ammunition:0,max-reload:3600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon hunterf6.additional.1000lb set value [{kind:1000lb,type:normal,offset:[2.1d,-0.8d,0.7d],damage:2250,weight:450.0f,cmd:133}]
data modify storage voxel-planes:weapon hunterf6.additional.1000lb append value {kind:1000lb,type:normal,offset:[-2.7d,-0.8d,0.7d],damage:2250,weight:450.0f,cmd:133}

#デフォルトロケット弾データセット
data modify storage voxel-planes:weapon hunterf6.base.rocket.data set value {name:rocket,type:rocket,max-ammunition:0,current-ammunition:0,max-reload:1200,current-reload:0,rockets:[]}
#data modify storage voxel-planes:weapon hunterf6.additional.$ADDITIONAL_WEAPOM set value [{kind:$WEPAON_KIND,type:$ROCKET_TYPE,offset:[$X,$Y,$Z],damage:$DAMAGE,weight:$WEPAON_WEIGHT,cmd:$WEAPON_CMD}]