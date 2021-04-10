#> plane-data:ki-49/ki49-storage
#
# @within function constructor:addstorage

data modify storage voxel-planes:weapon ki49 set value {base:{},additional:{}}
data modify storage voxel-planes:plane ki49 set value {}

#飛行機データセット
data modify storage voxel-planes:plane ki49.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane ki49.plane-data.tier set value 3
data modify storage voxel-planes:plane ki49.plane-data.flight-model.weight set value 9680
data modify storage voxel-planes:plane ki49.plane-data.flight-model.speed set value {max-speed:492f,cruise-speed:350f,climb-rate:6.1f,stall-speed:175f}
data modify storage voxel-planes:plane ki49.plane-data.flight-model.engine set value {type:recipro,horse-power:1520f,number:2}
data modify storage voxel-planes:plane ki49.plane-data.flight-model.turn-rate set value {pitch:25f,yaw:19f,roll:18f}
data modify storage voxel-planes:plane ki49.plane-data.flight-model.energy-loss-rate set value 0.6
data modify storage voxel-planes:plane ki49.plane-data.model-data.body set value {parking-cmd:110,rolling-cmd:111,flying-cmd:112}
data modify storage voxel-planes:plane ki49.plane-data.model-data.rightwing set value {parking-cmd:114,rolling-cmd:115,flying-cmd:116}
data modify storage voxel-planes:plane ki49.plane-data.model-data.landing-pitch set value -6.0
data modify storage voxel-planes:plane ki49.plane-data.hp set value {engine:60d,body:80d,aileron:70d,elevetor:60d,radder:70d}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon ki49.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:4,current-ammunition:4,max-reload:600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon ki49.base.bomb.data.bombs append value {kind:250kg,type:normal,offset:[-0.5d,0d,4d],damage:1250,weight:250,cmd:77}
data modify storage voxel-planes:weapon ki49.base.bomb.data.bombs append value {kind:250kg,type:normal,offset:[0.5d,0d,4d],damage:1250,weight:250,cmd:77}
data modify storage voxel-planes:weapon ki49.base.bomb.data.bombs append value {kind:250kg,type:normal,offset:[-0.5d,0d,2d],damage:1250,weight:250,cmd:77}
data modify storage voxel-planes:weapon ki49.base.bomb.data.bombs append value {kind:250kg,type:normal,offset:[0.5d,0d,2d],damage:1250,weight:250,cmd:77}
data modify storage voxel-planes:weapon ki49.additional.500kg set value [{kind:500kg,type:normal,offset:[0d,0d,1d],damage:2500,weight:500,cmd:118}]
data modify storage voxel-planes:weapon ki49.additional.500kg append value {kind:500kg,type:normal,offset:[0d,0d,4d],damage:2500,weight:500,cmd:118}
