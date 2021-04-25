#> plane-data:seafuryfb11/seafuryfb11-storage
#
# @within function constructor:addstorage

#ストレージリセット
data modify storage voxel-planes:weapon seafuryfb11 set value {base:{},additional:{}}
data modify storage voxel-planes:plane seafuryfb11 set value {}

#飛行機データセット
data modify storage voxel-planes:plane seafuryfb11.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane seafuryfb11.plane-data.tier set value 4
data modify storage voxel-planes:plane seafuryfb11.plane-data.flight-model.weight set value 5602
data modify storage voxel-planes:plane seafuryfb11.plane-data.flight-model.speed set value {max-speed:740f,cruise-speed:370f,climb-rate:21.9f,stall-speed:161f}
data modify storage voxel-planes:plane seafuryfb11.plane-data.flight-model.engine set value {type:recipro,horse-power:2480f,number:1}
data modify storage voxel-planes:plane seafuryfb11.plane-data.flight-model.turn-rate set value {pitch:39f,yaw:20f,roll:120f}
data modify storage voxel-planes:plane seafuryfb11.plane-data.flight-model.energy-loss-rate set value 0.5
data modify storage voxel-planes:plane seafuryfb11.plane-data.model-data.body set value {parking-cmd:125,rolling-cmd:126,flying-cmd:127}
data modify storage voxel-planes:plane seafuryfb11.plane-data.model-data.landing-pitch set value -14.0
data modify storage voxel-planes:plane seafuryfb11.plane-data.hp set value {engine:220d,body:250d,aileron:200d,elevetor:200d,radder:210d}
data modify storage voxel-planes:plane seafuryfb11.plane-data.hitbox set value {}
data modify storage voxel-planes:plane seafuryfb11.plane-data.hitbox merge value {engine:{offset:[0d,0d,2.7d]}}
data modify storage voxel-planes:plane seafuryfb11.plane-data.hitbox merge value {aileron-r:{offset:[-3.2d,-0.3d,1.1d]},aileron-l:{offset:[3.2d,-0.3d,1.1d]}}
data modify storage voxel-planes:plane seafuryfb11.plane-data.hitbox merge value {elevator-r:{offset:[-1.3d,0.1d,-4d]},elevator-l:{offset:[1.3d,0.1d,-4d]}}
data modify storage voxel-planes:plane seafuryfb11.plane-data.hitbox merge value {radder:{offset:[0d,0.8d,-4.2d]}}
data modify storage voxel-planes:plane seafuryfb11.plane-data.hitbox merge value {cockpit:{offset:[0d,0.7d,1.1d]}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon seafuryfb11.base.20mm.data set value {name:"20mm gun",type:gun,size:20mm,max-ammunition:225,current-ammunition:225,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"orange",damage:86,speed:9.5d,bullets:[{offset:[2.22d,-0.35d,3d]},{offset:[-2.22d,-0.35d,3d]},{offset:[2.54d,-0.35d,3d]},{offset:[-2.54d,-0.35d,3d]}]}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon seafuryfb11.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:2,current-ammunition:2,max-reload:3600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon seafuryfb11.additional.250kg set value [{kind:250kg,type:normal,offset:[-2.6d,-0.7d,1.2d],damage:1250,weight:250,cmd:77}]
data modify storage voxel-planes:weapon seafuryfb11.additional.250kg append value {kind:250kg,type:normal,offset:[2.6d,-0.7d,1.2d],damage:1250,weight:250,cmd:77}

