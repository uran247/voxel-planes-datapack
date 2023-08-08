#> plane-data:re2005/re2005-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon re2005 set value {base:{},additional:{}}
data modify storage voxel-planes:plane re2005 set value {}

#飛行機データセット
data modify storage voxel-planes:plane re2005.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane re2005.plane-data.tier set value 4
data modify storage voxel-planes:plane re2005.plane-data.flight-model.weight set value 3610
data modify storage voxel-planes:plane re2005.plane-data.flight-model.speed set value {max-speed:628f,cruise-speed:515f,climb-rate:20f,stall-speed:155f}
data modify storage voxel-planes:plane re2005.plane-data.flight-model.engine set value {type:recipro,horse-power:1475f,number:1}
data modify storage voxel-planes:plane re2005.plane-data.flight-model.turn-rate set value {pitch:39.6f,yaw:26.1f,roll:165f}
data modify storage voxel-planes:plane re2005.plane-data.flight-model.energy-loss-rate set value 0.5f
data modify storage voxel-planes:plane re2005.plane-data.model-data.body set value {parking-cmd:119,rolling-cmd:120,flying-cmd:121}
data modify storage voxel-planes:plane re2005.plane-data.model-data.landing-pitch set value -12.5f
data modify storage voxel-planes:plane re2005.plane-data.model-data.scale set value [1f,1f,1f]
data modify storage voxel-planes:plane re2005.plane-data.model-data.translation set value [0f,0.1f,0f]
data modify storage voxel-planes:plane re2005.plane-data.model-data.central-axis-offset set value 1.375
data modify storage voxel-planes:plane re2005.plane-data.hitbox set value {}
data modify storage voxel-planes:plane re2005.plane-data.hitbox merge value {engine:{max-hp:170f,offset:[0d,-0.4d,2.6d],width:1,height:1}}
data modify storage voxel-planes:plane re2005.plane-data.hitbox merge value {aileron-r:{max-hp:180f,offset:[-3d,-1d,0.8d],width:1.4,height:1.4},aileron-l:{max-hp:180f,offset:[3d,-1d,0.8d],width:1.4,height:1.4}}
data modify storage voxel-planes:plane re2005.plane-data.hitbox merge value {elevator-r:{max-hp:150f,offset:[-1d,-0.3d,-4d],width:0.8,height:0.8},elevator-l:{max-hp:150f,offset:[1d,-0.3d,-4d],width:0.8,height:0.8}}
data modify storage voxel-planes:plane re2005.plane-data.hitbox merge value {radder:{max-hp:160f,offset:[0d,0.5d,-4.1d],width:0.9f,height:0.9f}}
data modify storage voxel-planes:plane re2005.plane-data.hitbox merge value {cockpit:{offset:[0d,0.4d,0d],width:0.5f,height:0.5f}}
data modify storage voxel-planes:plane re2005.plane-data.hitbox merge value {body:{max-hp:190f,offset:[0d,-0.5d,0d],width:1f,height:1f}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon re2005.base.20mm set value {data:{name:"20mm",type:gun,size:20mm,max-ammunition:200,current-ammunition:200,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"yellow",damage:90,speed:9d,bullets:[{offset:[0d,1.4d,4.2d]},{offset:[-1.9d,1.1d,2.1d]},{offset:[1.9d,1.1d,2.1d]}]}}
data modify storage voxel-planes:weapon re2005.base.12p7mm set value {data:{name:"12.7mm gun",type:gun,size:12p7mm,max-ammunition:380,current-ammunition:380,max-cooltime:2,current-cooltime:0,max-reload:210,current-reload:0,tracer:"lightblue",damage:55,speed:9.5d,bullets:[{offset:[-0.1d,2d,2.8d]},{offset:[0.1d,2d,2.8d]}]}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon re2005.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:1,current-ammunition:1,max-reload:3600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon re2005.additional.500kg set value [{kind:500kg,type:normal,offset:[-0.6f,-0.9f,0.5f],damage:2500,weight:500f,cmd:124}]
data modify storage voxel-planes:weapon re2005.additional.100kg set value [{kind:100kg,type:normal,offset:[-3f,-0.5f,0.6f],damage:500,weight:100f,cmd:203}]
data modify storage voxel-planes:weapon re2005.additional.100kg append value {kind:100kg,type:normal,offset:[3f,-0.5f,0.6f],damage:500,weight:100f,cmd:203}

