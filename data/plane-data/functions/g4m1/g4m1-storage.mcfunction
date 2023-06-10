#> plane-data:g4m1/g4m1-storage
#
# @within tag/function constructor:add-storage

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
data modify storage voxel-planes:plane g4m1.plane-data.model-data.scale set value [3.981f,3.981f,3.981f]
data modify storage voxel-planes:plane g4m1.plane-data.model-data.translation set value [0f,-1.6f,-12.5f]
data modify storage voxel-planes:plane g4m1.plane-data.model-data.central-axis-offset set value 2
data modify storage voxel-planes:plane g4m1.plane-data.hp set value {engine:100d,body:110d,aileron:90d,elevetor:70d,radder:70d}
data modify storage voxel-planes:plane g4m1.plane-data.hitbox set value {}
data modify storage voxel-planes:plane g4m1.plane-data.hitbox merge value {body:{max-hp:110d,offset:[0d,-0.8d,0d],width:2,height:2}}
data modify storage voxel-planes:plane g4m1.plane-data.hitbox merge value {engine-r:{max-hp:100d,offset:[-3.3d,-0.8d,7d],width:1.2,height:1.2},engine-l:{max-hp:100d,offset:[3.3d,-0.8d,7d],width:1.2,height:1.2}}
data modify storage voxel-planes:plane g4m1.plane-data.hitbox merge value {aileron-r:{max-hp:90d,offset:[-6.4d,-0.5d,3.2d],width:2.2,height:2.2},aileron-l:{max-hp:90d,offset:[6.4d,-0.5d,3.2d],width:2.2,height:2.2}}
data modify storage voxel-planes:plane g4m1.plane-data.hitbox merge value {elevator-r:{max-hp:70d,offset:[-2.5d,0.2d,-6.9d],width:1.3,height:1.3},elevator-l:{max-hp:70d,offset:[2.5d,0.2d,-6.9d],width:1.3,height:1.3}}
data modify storage voxel-planes:plane g4m1.plane-data.hitbox merge value {radder:{max-hp:70d,offset:[0d,1.8d,-6.8d],width:1.5,height:1.5}}
data modify storage voxel-planes:plane g4m1.plane-data.hitbox merge value {cockpit:{offset:[0d,0.6d,7.5d],width:0.9,height:0.9}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon g4m1.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:4,current-ammunition:4,max-reload:600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon g4m1.base.bomb.data.bombs append value {kind:250kg,type:normal,offset:[-0.5d,1.6d,4d],damage:1250,weight:250,cmd:77}
data modify storage voxel-planes:weapon g4m1.base.bomb.data.bombs append value {kind:250kg,type:normal,offset:[0.5d,1.6d,4d],damage:1250,weight:250,cmd:77}
data modify storage voxel-planes:weapon g4m1.base.bomb.data.bombs append value {kind:250kg,type:normal,offset:[-0.5d,1.6d,2d],damage:1250,weight:250,cmd:77}
data modify storage voxel-planes:weapon g4m1.base.bomb.data.bombs append value {kind:250kg,type:normal,offset:[0.5d,1.6d,2d],damage:1250,weight:250,cmd:77}
data modify storage voxel-planes:weapon g4m1.additional.800kg set value [{kind:800kg,type:normal,offset:[0d,1.6d,3d],damage:4000,weight:800,cmd:118}]

#魚雷データセット
data modify storage voxel-planes:weapon g4m1.base.torpedo.data set value {name:torpedo,type:torpedo,max-ammunition:0,current-ammunition:0,max-reload:500,current-reload:0,torpedos:[]}
data modify storage voxel-planes:weapon g4m1.additional.torpedo set value [{kind:1600lb,type:normal,offset:[0d,2.1d,0d],damage:3600,weight:680,cmd:48}]
