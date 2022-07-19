#> plane-data:il2/il2-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon il2 set value {base:{},additional:{}}
data modify storage voxel-planes:plane il2 set value {}

#飛行機データセット
data modify storage voxel-planes:plane il2.plane-data.plane-type set value attacker
data modify storage voxel-planes:plane il2.plane-data.tier set value 3
data modify storage voxel-planes:plane il2.plane-data.flight-model.weight set value 5500
data modify storage voxel-planes:plane il2.plane-data.flight-model.speed set value {max-speed:410f,cruise-speed:275f,climb-rate:5.6f,stall-speed:140f}
data modify storage voxel-planes:plane il2.plane-data.flight-model.engine set value {type:recipro,horse-power:1500,number:1}
data modify storage voxel-planes:plane il2.plane-data.flight-model.turn-rate set value {pitch:21.3f,yaw:12.8,roll:81.8f}
data modify storage voxel-planes:plane il2.plane-data.flight-model.energy-loss-rate set value 0.6
data modify storage voxel-planes:plane il2.plane-data.model-data.body set value {parking-cmd:34,rolling-cmd:35,flying-cmd:36}
data modify storage voxel-planes:plane il2.plane-data.model-data.landing-pitch set value -11
data modify storage voxel-planes:plane il2.plane-data.hitbox set value {}
data modify storage voxel-planes:plane il2.plane-data.hitbox merge value {engine:{max-hp:210d,offset:[0d,0d,2.7d]}}
data modify storage voxel-planes:plane il2.plane-data.hitbox merge value {aileron-r:{max-hp:200d,offset:[-2.7d,0d,0.5d]},aileron-l:{max-hp:200d,offset:[2.7d,0d,0.5d]}}
data modify storage voxel-planes:plane il2.plane-data.hitbox merge value {elevator-r:{max-hp:190d,offset:[-1.3d,0.1d,-4.2d]},elevator-l:{max-hp:190d,offset:[1.3d,0.1d,-4.2d]}}
data modify storage voxel-planes:plane il2.plane-data.hitbox merge value {radder:{max-hp:190d,offset:[-0.1d,1d,-4.6d]}}
data modify storage voxel-planes:plane il2.plane-data.hitbox merge value {body:{max-hp:220d,offset:[0d,0d,0d]}}
data modify storage voxel-planes:plane il2.plane-data.hitbox merge value {cockpit:{offset:[0d,0.7d,1.1d]}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon il2.base.23mm.data set value {name:"23mm gun",type:gun,size:23mm,max-ammunition:150,current-ammunition:150,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"yellow",damage:61,speed:11.3d,bullets:[{offset:[1.9d,0.2d,2.1d]},{offset:[-1.95d,0.2d,2.1d]}]}
data modify storage voxel-planes:weapon il2.base.7p7mm.data set value {name:"7.7mm gun",type:gun,size:7p7mm,max-ammunition:750,current-ammunition:750,max-cooltime:1,current-cooltime:0,max-reload:140,current-reload:0,tracer:"lightblue",damage:19,speed:10,bullets:[{offset:[0.15d,0.55d,2.5d]},{offset:[-0.25d,0.55d,2.5d]}]}

#デフォルト爆弾データセット
#data modify storage voxel-planes:weapon il2.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:0,current-ammunition:0,max-reload:$RELOAD_TIME,current-reload:0,bombs:[]}
#data modify storage voxel-planes:weapon il2.additional.$ADDITIONAL_WEAPOM set value [{kind:$WEPAON_KIND,type:$BOMB_TYPE,offset:[$X,$Y,$Z],damage:$DAMAGE,weight:$WEPAON_WEIGHT,cmd:$WEAPON_CMD}]

#デフォルトロケット弾データセット
#data modify storage voxel-planes:weapon il2.base.rocket.data set value {name:rocket,type:rocket,max-ammunition:0,current-ammunition:0,max-reload:$RELOAD_TIME,current-reload:0,rockets:[]}
#data modify storage voxel-planes:weapon il2.additional.$ADDITIONAL_WEAPOM set value [{kind:$WEPAON_KIND,type:$ROCKET_TYPE,offset:[$X,$Y,$Z],damage:$DAMAGE,weight:$WEPAON_WEIGHT,cmd:$WEAPON_CMD}]