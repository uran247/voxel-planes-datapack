#> plane-data:g4m1/g4m1-storage
#
# @within function constructor:addstorage

#ストレージリセット
data modify storage voxel-planes:weapon g4m1 set value {base:{},additional:{}}
data modify storage voxel-planes:plane g4m1 set value {}

#飛行機データセット
data modify storage voxel-planes:plane g4m1.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane g4m1.plane-data.tier set value 2
data modify storage voxel-planes:plane g4m1.plane-data.flight-model.weight set value 9500
data modify storage voxel-planes:plane g4m1.plane-data.flight-model.speed set value {max-speed:453.7f,cruise-speed:315f,climb-rate:7.8f,stall-speed:105f}
data modify storage voxel-planes:plane g4m1.plane-data.flight-model.engine set value {type:recipro,horse-power:1460f,number:2}
data modify storage voxel-planes:plane g4m1.plane-data.flight-model.turn-rate set value {pitch:30f,yaw:22.6f,roll:39f}
data modify storage voxel-planes:plane g4m1.plane-data.flight-model.energy-loss-rate set value 0.5
data modify storage voxel-planes:plane g4m1.plane-data.model-data.body set value {parking-cmd:96,rolling-cmd:97,flying-cmd:98}
data modify storage voxel-planes:plane g4m1.plane-data.model-data merge value {rightwing:{offset:[-6.5d,0d,0d]},leftwing:{offset:[6.5d,0d,0d]}}
data modify storage voxel-planes:plane g4m1.plane-data.model-data.landing-pitch set value -5.0
data modify storage voxel-planes:plane g4m1.plane-data.hp set value {engine:100d,body:110d,aileron:90d,elevetor:70d,radder:70d}
data modify storage voxel-planes:plane g4m1.plane-data.hitbox set value {}
data modify storage voxel-planes:plane g4m1.plane-data.hitbox merge value {engine-r:{offset:[-3d,0.25d,8d]},engine-l:{offset:[3d,0.25d,8d]}}
data modify storage voxel-planes:plane g4m1.plane-data.hitbox merge value {aileron-r:{offset:[-7.4d,1d,4.2d]},aileron-l:{offset:[7.4d,1d,4.2d]}}
data modify storage voxel-planes:plane g4m1.plane-data.hitbox merge value {elevator-r:{offset:[-2.3d,1.2d,-6.1d]},elevator-l:{offset:[2.3d,1.2d,-6.1d]}}
data modify storage voxel-planes:plane g4m1.plane-data.hitbox merge value {radder:{offset:[0d,3d,-6.5d]}}
data modify storage voxel-planes:plane g4m1.plane-data.hitbox merge value {cockpit:{offset:[0d,1.9d,7.5d]}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon g4m1.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:4,current-ammunition:4,max-reload:600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon g4m1.base.bomb.data.bombs append value {kind:250kg,type:normal,offset:[-0.5d,0d,4d],damage:1250,weight:250,cmd:77}
data modify storage voxel-planes:weapon g4m1.base.bomb.data.bombs append value {kind:250kg,type:normal,offset:[0.5d,0d,4d],damage:1250,weight:250,cmd:77}
data modify storage voxel-planes:weapon g4m1.base.bomb.data.bombs append value {kind:250kg,type:normal,offset:[-0.5d,0d,2d],damage:1250,weight:250,cmd:77}
data modify storage voxel-planes:weapon g4m1.base.bomb.data.bombs append value {kind:250kg,type:normal,offset:[0.5d,0d,2d],damage:1250,weight:250,cmd:77}
data modify storage voxel-planes:weapon g4m1.additional.800kg set value [{kind:800kg,type:normal,offset:[0d,0d,3d],damage:4000,weight:800,cmd:118}]
