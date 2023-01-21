#> plane-data:d520/d520-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon d520 set value {base:{},additional:{}}
data modify storage voxel-planes:plane d520 set value {}

#飛行機データセット
data modify storage voxel-planes:plane d520.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane d520.plane-data.tier set value 2
data modify storage voxel-planes:plane d520.plane-data.flight-model.weight set value 2452
data modify storage voxel-planes:plane d520.plane-data.flight-model.speed set value {max-speed:529,cruise-speed:370,climb-rate:14.3,stall-speed:125}
data modify storage voxel-planes:plane d520.plane-data.flight-model.engine set value {type:recipro,horse-power:900,number:1}
data modify storage voxel-planes:plane d520.plane-data.flight-model.turn-rate set value {pitch:36f,yaw:21.6f,roll:$ROLL_RATE_DEGREE}
data modify storage voxel-planes:plane d520.plane-data.flight-model.energy-loss-rate set value 0.7
data modify storage voxel-planes:plane d520.plane-data.model-data.body set value {parking-cmd:41,rolling-cmd:42,flying-cmd:43}
data modify storage voxel-planes:plane d520.plane-data.model-data.landing-pitch set value $LANDING_PITCH_DEGREE
data modify storage voxel-planes:plane d520.plane-data.hitbox set value {}
data modify storage voxel-planes:plane d520.plane-data.hitbox merge value {engine:{max-hp:160d,offset:[$X,$Y,$Z]}}
data modify storage voxel-planes:plane d520.plane-data.hitbox merge value {aileron-r:{max-hp:140d,offset:[$X,$Y,$Z]},aileron-l:{max-hp:140d,offset:[$X,$Y,$Z]}}
data modify storage voxel-planes:plane d520.plane-data.hitbox merge value {elevator-r:{max-hp:110d,offset:[$X,$Y,$Z]},elevator-l:{max-hp:110d,offset:[$X,$Y,$Z]}}
data modify storage voxel-planes:plane d520.plane-data.hitbox merge value {radder:{max-hp:120d,offset:[$X,$Y,$Z]}}
data modify storage voxel-planes:plane d520.plane-data.hitbox merge value {cockpit:{offset:[$X,$Y,$Z]}}
data modify storage voxel-planes:plane d520.plane-data.hitbox merge value {body:{max-hp:170d,offset:[$X,$Y,$Z]}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon d520.base.20mm set value {data:{name:"20mm gun",type:gun,size:20mm,max-ammunition:60,current-ammunition:60,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"lightgreen",damage:60,speed:11,bullets:[{offset:[0d,0d,4d]}]}}
data modify storage voxel-planes:weapon d520.base.7.5mm set value {data:{name:"7.5mm gun",type:gun,size:7p7mm,max-ammunition:675,current-ammunition:675,max-cooltime:1,current-cooltime:0,max-reload:140,current-reload:0,tracer:"lightgreen",damage:18,speed:10.5,bullets:[{offset:[0d,0d,0d]},{offset:[0d,0d,0d]},{offset:[0d,0d,0d]},{offset:[0d,0d,0d]}]}}
