#> plane-data:d3a/d3a-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon d3a set value {base:{},additional:{}}
data modify storage voxel-planes:plane d3a set value {}

#飛行機データセット
data modify storage voxel-planes:plane d3a.plane-data.plane-type set value bomber
data modify storage voxel-planes:plane d3a.plane-data.tier set value 1
data modify storage voxel-planes:plane d3a.plane-data.flight-model.weight set value 3140
data modify storage voxel-planes:plane d3a.plane-data.flight-model.speed set value {max-speed:381.5f,cruise-speed:296f,climb-rate:7.8f,stall-speed:95f}
data modify storage voxel-planes:plane d3a.plane-data.flight-model.engine set value {type:recipro,horse-power:1070f,number:1}
data modify storage voxel-planes:plane d3a.plane-data.flight-model.turn-rate set value {pitch:26f,yaw:20f,roll:78f}
data modify storage voxel-planes:plane d3a.plane-data.flight-model.energy-loss-rate set value 0.4
data modify storage voxel-planes:plane d3a.plane-data.model-data.body set value {parking-cmd:73,rolling-cmd:74,flying-cmd:74}
data modify storage voxel-planes:plane d3a.plane-data.model-data.landing-pitch set value -12.5
data modify storage voxel-planes:plane d3a.plane-data.model-data.scale set value [2f,2f,2f]
data modify storage voxel-planes:plane d3a.plane-data.model-data.translation set value [0f,0.3f,-3.3f]
data modify storage voxel-planes:plane d3a.plane-data.hp set value {engine:50d,body:50d,aileron:50d,elevetor:40d,radder:40d}
data modify storage voxel-planes:plane d3a.plane-data.hitbox set value {}
data modify storage voxel-planes:plane d3a.plane-data.hitbox merge value {body:{max-hp:50d,offset:[0d,0d,0d]}}
data modify storage voxel-planes:plane d3a.plane-data.hitbox merge value {engine:{max-hp:50d,offset:[0d,0d,3d]}}
data modify storage voxel-planes:plane d3a.plane-data.hitbox merge value {aileron-r:{max-hp:50d,offset:[-4d,-0.1d,1d]},aileron-l:{max-hp:50d,offset:[4d,-0.1d,1d]}}
data modify storage voxel-planes:plane d3a.plane-data.hitbox merge value {elevator-r:{max-hp:40d,offset:[-1.2d,0.1d,-4.9d]},elevator-l:{max-hp:40d,offset:[1.2d,0.1d,-4.9d]}}
data modify storage voxel-planes:plane d3a.plane-data.hitbox merge value {radder:{max-hp:40d,offset:[0d,1.1d,-4.9d]}}
data modify storage voxel-planes:plane d3a.plane-data.hitbox merge value {cockpit:{offset:[0d,0.9d,0.9d]}}


#デフォルト機銃データセット
data modify storage voxel-planes:weapon d3a.base.7p7mm.data set value {name:"7.7mm gun",type:gun,size:7p7mm,max-ammunition:500,current-ammunition:500,max-cooltime:1,current-cooltime:0,max-reload:140,current-reload:0,tracer:"lightblue",damage:9,speed:9.5,bullets:[{offset:[0.21d,0.72d,0d]},{offset:[-0.21d,0.72d,0d]}]}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon d3a.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:3,current-ammunition:3,max-reload:500,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon d3a.base.bomb.data.bombs append value {kind:60kg,type:normal,offset:[-4.62d,-0.7d,0.8d],damage:300,weight:60f,cmd:76}
data modify storage voxel-planes:weapon d3a.base.bomb.data.bombs append value {kind:60kg,type:normal,offset:[4.62d,-0.7d,0.8d],damage:300,weight:60f,cmd:76}
data modify storage voxel-planes:weapon d3a.base.bomb.data.bombs append value {kind:250kg,type:normal,offset:[0.075d,-1.1d,0.8d],damage:1250,weight:250f,cmd:77}

