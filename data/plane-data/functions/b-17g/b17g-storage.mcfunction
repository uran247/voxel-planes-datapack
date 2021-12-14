#> plane-data:b-17g/b17g-storage
#
# @within tag/function constructor:add-storage

data modify storage voxel-planes:weapon b17g set value {base:{},additional:{}}
data modify storage voxel-planes:plane b17g set value {}

#飛行機データセット
data modify storage voxel-planes:plane b17g.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane b17g.plane-data.tier set value 3
data modify storage voxel-planes:plane b17g.plane-data.flight-model.weight set value 9680
data modify storage voxel-planes:plane b17g.plane-data.flight-model.speed set value {max-speed:492f,cruise-speed:350f,climb-rate:6.1f,stall-speed:175f}
data modify storage voxel-planes:plane b17g.plane-data.flight-model.engine set value {type:recipro,horse-power:1520f,number:2}
data modify storage voxel-planes:plane b17g.plane-data.flight-model.turn-rate set value {pitch:25f,yaw:19f,roll:18f}
data modify storage voxel-planes:plane b17g.plane-data.flight-model.energy-loss-rate set value 0.6
data modify storage voxel-planes:plane b17g.plane-data.model-data.body set value {parking-cmd:150,rolling-cmd:151,flying-cmd:152}
data modify storage voxel-planes:plane b17g.plane-data.model-data.tail set value {parking-cmd:153,rolling-cmd:153,flying-cmd:154}
data modify storage voxel-planes:plane b17g.plane-data.model-data.rightwing set value {parking-cmd:155,rolling-cmd:156,flying-cmd:156,offset:[-3.1d,0d,0d]}
data modify storage voxel-planes:plane b17g.plane-data.model-data.leftwing set value {parking-cmd:158,rolling-cmd:159,flying-cmd:159,offset:[3.1d,0d,0d]}
data modify storage voxel-planes:plane b17g.plane-data.model-data.landing-pitch set value -7.0
data modify storage voxel-planes:plane b17g.plane-data.hp set value {engine:60d,body:80d,aileron:70d,elevetor:60d,radder:70d}
data modify storage voxel-planes:plane b17g.plane-data.hitbox set value {}
data modify storage voxel-planes:plane b17g.plane-data.hitbox merge value {engine-r:{offset:[-2.6d,0.25d,6.3d]},engine-l:{offset:[2.6d,0.25d,6.3d]}}
data modify storage voxel-planes:plane b17g.plane-data.hitbox merge value {aileron-r:{offset:[-7.4d,0.8d,3.2d]},aileron-l:{offset:[7.4d,0.8d,3.2d]}}
data modify storage voxel-planes:plane b17g.plane-data.hitbox merge value {elevator-r:{offset:[-2.3d,0.6d,-5.7d]},elevator-l:{offset:[2.3d,0.6d,-5.7d]}}
data modify storage voxel-planes:plane b17g.plane-data.hitbox merge value {radder:{offset:[0d,2.4d,-5.8d]}}
data modify storage voxel-planes:plane b17g.plane-data.hitbox merge value {cockpit:{offset:[0d,1.1d,6.6d]}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon b17g.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:4,current-ammunition:4,max-reload:600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon b17g.base.bomb.data.bombs append value {kind:250kg,type:normal,offset:[-0.5d,0d,4d],damage:1250,weight:250,cmd:77}
data modify storage voxel-planes:weapon b17g.base.bomb.data.bombs append value {kind:250kg,type:normal,offset:[0.5d,0d,4d],damage:1250,weight:250,cmd:77}
data modify storage voxel-planes:weapon b17g.base.bomb.data.bombs append value {kind:250kg,type:normal,offset:[-0.5d,0d,2d],damage:1250,weight:250,cmd:77}
data modify storage voxel-planes:weapon b17g.base.bomb.data.bombs append value {kind:250kg,type:normal,offset:[0.5d,0d,2d],damage:1250,weight:250,cmd:77}
data modify storage voxel-planes:weapon b17g.additional.500kg set value [{kind:500kg,type:normal,offset:[0d,0d,1d],damage:2500,weight:500,cmd:118}]
data modify storage voxel-planes:weapon b17g.additional.500kg append value {kind:500kg,type:normal,offset:[0d,0d,4d],damage:2500,weight:500,cmd:118}
