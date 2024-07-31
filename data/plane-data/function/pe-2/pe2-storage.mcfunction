#> plane-data:pe-2/pe2-storage
#
# @within tag/function constructor:add-storage

data modify storage voxel-planes:weapon pe2 set value {base:{},additional:{}}
data modify storage voxel-planes:plane pe2 set value {}

#飛行機データセット
data modify storage voxel-planes:plane pe2.plane-data.name set value pe2
data modify storage voxel-planes:plane pe2.plane-data.plane-type set value bomber
data modify storage voxel-planes:plane pe2.plane-data.tier set value 2
data modify storage voxel-planes:plane pe2.plane-data.flight-model.weight set value 7563
data modify storage voxel-planes:plane pe2.plane-data.flight-model.speed set value {max-speed:580f,cruise-speed:428f,climb-rate:7.2f,stall-speed:155f}
data modify storage voxel-planes:plane pe2.plane-data.flight-model.engine set value {type:recipro,horse-power:1100f,number:2}
data modify storage voxel-planes:plane pe2.plane-data.flight-model.turn-rate set value {pitch:27.2f,yaw:16.3f,roll:82f}
data modify storage voxel-planes:plane pe2.plane-data.flight-model.energy-loss-rate set value 0.7
data modify storage voxel-planes:plane pe2.plane-data.model-data.body set value {parking-cmd:135,rolling-cmd:136,flying-cmd:137}
data modify storage voxel-planes:plane pe2.plane-data.model-data.rightwing set value {parking-cmd:138,rolling-cmd:139,flying-cmd:140}
data modify storage voxel-planes:plane pe2.plane-data.model-data.tail set value {parking-cmd:141,rolling-cmd:141,flying-cmd:142}
data modify storage voxel-planes:plane pe2.plane-data.model-data.landing-pitch set value -12.0
data modify storage voxel-planes:plane pe2.plane-data.model-data.scale set value [2f,2f,2f]
data modify storage voxel-planes:plane pe2.plane-data.model-data.translation set value [0f,-0.4f,0f]
data modify storage voxel-planes:plane pe2.plane-data.model-data.central-axis-offset set value 1.375
data modify storage voxel-planes:plane pe2.plane-data.seat.position.ridden set value {x:0,y:0.5,z:-3.5}
data modify storage voxel-planes:plane pe2.plane-data.seat.position.vacant set value {x:0,y:-0.4,z:5.8}
data modify storage voxel-planes:plane pe2.plane-data.hitbox set value {}
data modify storage voxel-planes:plane pe2.plane-data.hitbox merge value {engine-r:{max-hp:190d,offset:[-2.3d,-0.7d,5.5d],width:0.9,height:0.9},engine-l:{max-hp:190d,offset:[2.3d,-0.7d,5.5d],width:0.9,height:0.9}}
data modify storage voxel-planes:plane pe2.plane-data.hitbox merge value {aileron-r:{max-hp:180d,offset:[-5d,-0.8d,3.5d],width:1.7,height:1.7},aileron-l:{max-hp:180d,offset:[5d,-0.8d,3.5d],width:1.7,height:1.7}}
data modify storage voxel-planes:plane pe2.plane-data.hitbox merge value {elevator-r:{max-hp:150d,offset:[-1.3d,-0.2d,-3.3d],width:1.2,height:1.2},elevator-l:{max-hp:150d,offset:[1.3d,-0.2d,-3.3d],width:1.2,height:1.2}}
data modify storage voxel-planes:plane pe2.plane-data.hitbox merge value {radder-r:{max-hp:170d,offset:[-2.5d,0.2d,-3.4d],width:1,height:1},radder-l:{max-hp:150d,offset:[2.5d,0.2d,-3.4d],width:1,height:1}}
data modify storage voxel-planes:plane pe2.plane-data.hitbox merge value {cockpit:{offset:[0d,0.4d,5.8d],width:0.6,height:0.6}}
data modify storage voxel-planes:plane pe2.plane-data.hitbox merge value {body:{max-hp:200d,offset:[0d,-0.5d,0d],width:1,height:1}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon pe2.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:4,current-ammunition:4,max-reload:600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon pe2.additional.250kg set value [{kind:250kg,type:normal,offset:[-0.7d,-0.9d,3d],damage:1250,weight:250,cmd:204}]
data modify storage voxel-planes:weapon pe2.additional.250kg append value {kind:250kg,type:normal,offset:[0.7d,-0.9d,3d],damage:1250,weight:250,cmd:204}
data modify storage voxel-planes:weapon pe2.additional.250kg append value {kind:250kg,type:normal,offset:[-1.4d,-0.9d,3d],damage:1250,weight:250,cmd:204}
data modify storage voxel-planes:weapon pe2.additional.250kg append value {kind:250kg,type:normal,offset:[1.4d,-0.9d,3d],damage:1250,weight:250,cmd:204}
data modify storage voxel-planes:weapon pe2.additional.500kg set value [{kind:500kg,type:normal,offset:[1.1d,-0.9d,2.8d],damage:2500,weight:500,cmd:206}]
data modify storage voxel-planes:weapon pe2.additional.500kg append value {kind:500kg,type:normal,offset:[-1.1d,-0.9d,2.8d],damage:2500,weight:500,cmd:206}

#デフォルトロケット弾データセット
data modify storage voxel-planes:weapon pe2.base.rocket.data set value {name:rocket,type:rocket,max-ammunition:0,current-ammunition:0,max-reload:600,current-reload:0,rockets:[]}
data modify storage voxel-planes:weapon pe2.additional.rs132 set value [{kind:10kg,type:normal,offset:[5d,-0.4d,3d],damage:500,weight:10,cmd:205}]
data modify storage voxel-planes:weapon pe2.additional.rs132 append value {kind:10kg,type:normal,offset:[5.3d,-0.35d,3d],damage:500,weight:10,cmd:205}
data modify storage voxel-planes:weapon pe2.additional.rs132 append value {kind:10kg,type:normal,offset:[5.6d,-0.3d,3d],damage:500,weight:10,cmd:205}
data modify storage voxel-planes:weapon pe2.additional.rs132 append value {kind:10kg,type:normal,offset:[5.9d,-0.25d,3d],damage:500,weight:10,cmd:205}
data modify storage voxel-planes:weapon pe2.additional.rs132 append value {kind:10kg,type:normal,offset:[6.2d,-0.2d,3d],damage:500,weight:10,cmd:205}
data modify storage voxel-planes:weapon pe2.additional.rs132 append value {kind:10kg,type:normal,offset:[-5d,-0.4d,3d],damage:500,weight:10,cmd:205}
data modify storage voxel-planes:weapon pe2.additional.rs132 append value {kind:10kg,type:normal,offset:[-5.3d,-0.35d,3d],damage:500,weight:10,cmd:205}
data modify storage voxel-planes:weapon pe2.additional.rs132 append value {kind:10kg,type:normal,offset:[-5.6d,-0.3d,3d],damage:500,weight:10,cmd:205}
data modify storage voxel-planes:weapon pe2.additional.rs132 append value {kind:10kg,type:normal,offset:[-5.9d,-0.25d,3d],damage:500,weight:10,cmd:205}
data modify storage voxel-planes:weapon pe2.additional.rs132 append value {kind:10kg,type:normal,offset:[-6.2d,-0.2d,3d],damage:500,weight:10,cmd:205}
