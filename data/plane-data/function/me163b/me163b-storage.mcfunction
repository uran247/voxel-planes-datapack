#> plane-data:me163b/me163b-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon me163b set value {base:{},additional:{}}
data modify storage voxel-planes:plane me163b set value {}

#飛行機データセット
data modify storage voxel-planes:plane me163b.plane-data.plane-type set value foghter
data modify storage voxel-planes:plane me163b.plane-data.tier set value 5
data modify storage voxel-planes:plane me163b.plane-data.flight-model.weight set value 3950f
data modify storage voxel-planes:plane me163b.plane-data.flight-model.speed set value {max-speed:900f,cruise-speed:700f,climb-rate:81f,stall-speed:250f}
data modify storage voxel-planes:plane me163b.plane-data.flight-model.engine set value {type:jet,thrust:1500f,number:1}
data modify storage voxel-planes:plane me163b.plane-data.flight-model.turn-rate set value {pitch:34.6f,yaw:20.8f,roll:160.7f}
data modify storage voxel-planes:plane me163b.plane-data.flight-model.energy-loss-rate set value 0.4f
data modify storage voxel-planes:plane me163b.plane-data.model-data.body set value {parking-cmd:213,rolling-cmd:214,flying-cmd:215}
data modify storage voxel-planes:plane me163b.plane-data.model-data.landing-pitch set value -6
data modify storage voxel-planes:plane me163b.plane-data.model-data.scale set value [9.3f,9.3f,9.3f]
data modify storage voxel-planes:plane me163b.plane-data.model-data.translation set value [0f,1.5f,0f]
data modify storage voxel-planes:plane me163b.plane-data.hitbox set value {}
data modify storage voxel-planes:plane me163b.plane-data.hitbox merge value {engine:{max-hp:230d,offset:[0d,0d,-0.5d]}}
data modify storage voxel-planes:plane me163b.plane-data.hitbox merge value {aileron-r:{max-hp:230d,offset:[-2.5d,-0.3d,-1d]},aileron-l:{max-hp:230d,offset:[2.5d,-0.3d,-1d]}}
data modify storage voxel-planes:plane me163b.plane-data.hitbox merge value {elevator-r:{max-hp:200d,offset:[-0.8d,1.4d,-5.5d]},elevator-l:{max-hp:200d,offset:[0.8d,1.4d,-5.5d]}}
data modify storage voxel-planes:plane me163b.plane-data.hitbox merge value {radder:{max-hp:220d,offset:[0d,1.3d,-5d]}}
data modify storage voxel-planes:plane me163b.plane-data.hitbox merge value {cockpit:{offset:[0d,0.5d,2d]}}
data modify storage voxel-planes:plane me163b.plane-data.hitbox merge value {body:{max-hp:250d,offset:[0d,0d,0d]}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon me163b.base.gun set value {data:{name:"20mm",type:gun,size:30mm,max-ammunition:60,current-ammunition:60,max-cooltime:4,current-cooltime:0,max-reload:800,current-reload:0,tracer:"orange",damage:200,speed:6.8,bullets:[{offset:[1,0,1]},{offset:[-1,0,1]}]}}

