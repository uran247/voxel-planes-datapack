#> plane-data:mig15bis/mig15bis-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon mig15bis set value {base:{},additional:{}}
data modify storage voxel-planes:plane mig15bis set value {}

#飛行機データセット
data modify storage voxel-planes:plane mig15bis.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane mig15bis.plane-data.tier set value 5
data modify storage voxel-planes:plane mig15bis.plane-data.flight-model.weight set value 5044
data modify storage voxel-planes:plane mig15bis.plane-data.flight-model.speed set value {max-speed:1076f,cruise-speed:840f,climb-rate:50f,stall-speed:201f}
data modify storage voxel-planes:plane mig15bis.plane-data.flight-model.engine set value {type:jet,thrust:2698.9f,number:1}
data modify storage voxel-planes:plane mig15bis.plane-data.flight-model.turn-rate set value {pitch:34.7f,yaw:20.9,roll:72.9f}
data modify storage voxel-planes:plane mig15bis.plane-data.flight-model.energy-loss-rate set value 0.4
data modify storage voxel-planes:plane mig15bis.plane-data.model-data.body set value {parking-cmd:175,rolling-cmd:175,flying-cmd:176}
data modify storage voxel-planes:plane mig15bis.plane-data.model-data.landing-pitch set value 0
data modify storage voxel-planes:plane mig15bis.plane-data.model-data.scale set value [1f,1f,1f]
data modify storage voxel-planes:plane mig15bis.plane-data.model-data.translation set value [0f,-0.5f,0f]
data modify storage voxel-planes:plane mig15bis.plane-data.model-data.central-axis-offset set value 1.375
data modify storage voxel-planes:plane mig15bis.plane-data.hitbox set value {}
data modify storage voxel-planes:plane mig15bis.plane-data.hitbox merge value {engine:{max-hp:310d,offset:[0d,-0.6d,-0.5d],width:1.2,height:1.2}}
data modify storage voxel-planes:plane mig15bis.plane-data.hitbox merge value {aileron-r:{max-hp:300d,offset:[-2.5d,-0.6d,-1.4d],width:1.2,height:1.2},aileron-l:{max-hp:300d,offset:[2.5d,-0.6d,-1.4d],width:1.2,height:1.2}}
data modify storage voxel-planes:plane mig15bis.plane-data.hitbox merge value {elevator-r:{max-hp:270d,offset:[-0.8d,1.3d,-6d],width:0.7,height:0.7},elevator-l:{max-hp:270d,offset:[0.8d,1.3d,-6d],width:0.7,height:0.7}}
data modify storage voxel-planes:plane mig15bis.plane-data.hitbox merge value {radder:{max-hp:280d,offset:[0d,1d,-5.3d],width:1,height:1}}
data modify storage voxel-planes:plane mig15bis.plane-data.hitbox merge value {cockpit:{offset:[0d,0.5d,1.5d],width:0.4,height:0.4}}
data modify storage voxel-planes:plane mig15bis.plane-data.hitbox merge value {body:{max-hp:320d,offset:[0d,-0.6d,0d],width:1.2,height:1.2}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon mig15bis.base.23mm set value {data:{name:"23mm",type:gun,size:23mm,max-ammunition:80,current-ammunition:80,max-cooltime:2,current-cooltime:0,max-reload:300,current-reload:0,tracer:"orange",damage:170,speed:8.6f,bullets:[{offset:[0.32d,0.7d,2.9d]},{offset:[0.4d,0.7d,3.3d]}]}}
data modify storage voxel-planes:weapon mig15bis.base.37mm set value {data:{name:"37mm",type:gun,size:37mm,max-ammunition:40,current-ammunition:40,max-cooltime:4,current-cooltime:0,max-reload:300,current-reload:0,tracer:"lightgreen",damage:290,speed:8.6f,bullets:[{offset:[-0.2d,0.7d,3.3d]}]}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon mig15bis.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:0,current-ammunition:0,max-reload:3600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon mig15bis.additional.100kg set value [{kind:100kg,type:normal,offset:[2.7d,-0.4d,-1.4d],damage:500,weight:100,cmd:203}]
data modify storage voxel-planes:weapon mig15bis.additional.100kg append value {kind:100kg,type:normal,offset:[-2.7d,-0.4d,-1.4d],damage:500,weight:100,cmd:203}

#デフォルトロケット弾データセット
#data modify storage voxel-planes:weapon mig15bis.base.rocket.data set value {name:rocket,type:rocket,max-ammunition:0,current-ammunition:0,max-reload:$RELOAD_TIME,current-reload:0,rockets:[]}
#data modify storage voxel-planes:weapon mig15bis.additional.$ADDITIONAL_WEAPOM set value [{kind:$WEPAON_KIND,type:$ROCKET_TYPE,offset:[$X,$Y,$Z],damage:$DAMAGE,weight:$WEPAON_WEIGHT,cmd:$WEAPON_CMD}]