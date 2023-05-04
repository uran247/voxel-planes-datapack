#> plane-data:b-17g/b17g-storage
#
# @within tag/function constructor:add-storage

data modify storage voxel-planes:weapon b17g set value {base:{},additional:{}}
data modify storage voxel-planes:plane b17g set value {}

#飛行機データセット
data modify storage voxel-planes:plane b17g.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane b17g.plane-data.tier set value 4
data modify storage voxel-planes:plane b17g.plane-data.flight-model.weight set value 24500
data modify storage voxel-planes:plane b17g.plane-data.flight-model.speed set value {max-speed:462f,cruise-speed:293f,climb-rate:4.6f,stall-speed:164.8f}
data modify storage voxel-planes:plane b17g.plane-data.flight-model.engine set value {type:recipro,horse-power:1200f,number:4}
data modify storage voxel-planes:plane b17g.plane-data.flight-model.turn-rate set value {pitch:20f,yaw:10f,roll:18f}
data modify storage voxel-planes:plane b17g.plane-data.flight-model.energy-loss-rate set value 1.0
data modify storage voxel-planes:plane b17g.plane-data.model-data.body set value {parking-cmd:150,rolling-cmd:151,flying-cmd:152}
data modify storage voxel-planes:plane b17g.plane-data.model-data.tail set value {parking-cmd:153,rolling-cmd:153,flying-cmd:154}
data modify storage voxel-planes:plane b17g.plane-data.model-data.rightwing set value {parking-cmd:155,rolling-cmd:156,flying-cmd:156,offset:[-3.1d,0d,0d]}
data modify storage voxel-planes:plane b17g.plane-data.model-data.leftwing set value {parking-cmd:158,rolling-cmd:159,flying-cmd:159,offset:[3.1d,0d,0d]}
data modify storage voxel-planes:plane b17g.plane-data.model-data.landing-pitch set value -7.0
data modify storage voxel-planes:plane b17g.plane-data.model-data.scale set value [4.488f,4.488f,4.488f]
data modify storage voxel-planes:plane b17g.plane-data.model-data.translation set value [0f,1.1f,1.5f]
data modify storage voxel-planes:plane b17g.plane-data.hitbox set value {}
data modify storage voxel-planes:plane b17g.plane-data.hitbox merge value {body:{max-hp:420d,offset:[0d,0d,0d]}}
data modify storage voxel-planes:plane b17g.plane-data.hitbox merge value {engine-r:{max-hp:400d,offset:[-2.6d,0.25d,7.3d]},engine-l:{max-hp:400d,offset:[2.6d,0.25d,7.3d]},engine-r2:{max-hp:400d,offset:[-5.6d,0.25d,7.3d]},engine-l2:{max-hp:400d,offset:[5.6d,0.25d,7.3d]}}
data modify storage voxel-planes:plane b17g.plane-data.hitbox merge value {aileron-r:{max-hp:310d,offset:[-5.4d,0d,4.2d]},aileron-l:{max-hp:310d,offset:[5.4d,0d,4.2d]},aileron-r2:{max-hp:310d,offset:[-10.4d,0.8d,4.2d]},aileron-l2:{max-hp:310d,offset:[10.4d,0.8d,4.2d]}}
data modify storage voxel-planes:plane b17g.plane-data.hitbox merge value {elevator-r:{max-hp:310d,offset:[-2.8d,0.6d,-5.7d]},elevator-l:{max-hp:310d,offset:[2.8d,0.6d,-5.7d]}}
data modify storage voxel-planes:plane b17g.plane-data.hitbox merge value {radder:{max-hp:310d,offset:[0d,2.4d,-6.8d]}}
data modify storage voxel-planes:plane b17g.plane-data.hitbox merge value {cockpit:{offset:[0d,1d,8.3d]}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon b17g.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:0,current-ammunition:0,max-reload:600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon b17g.additional.500lb set value [{kind:500lb,type:normal,offset:[0.8d,-0.5d,4.4d],damage:1140,weight:227.0f,cmd:164}]
data modify storage voxel-planes:weapon b17g.additional.500lb append value {kind:500lb,type:normal,offset:[0.8d,0d,4.4d],damage:1140,weight:227.0f,cmd:164}
data modify storage voxel-planes:weapon b17g.additional.500lb append value {kind:500lb,type:normal,offset:[0.8d,0.5d,4.4d],damage:1140,weight:227.0f,cmd:164}
data modify storage voxel-planes:weapon b17g.additional.500lb append value {kind:500lb,type:normal,offset:[0.3d,-0.5d,4.4d],damage:1140,weight:227.0f,cmd:164}
data modify storage voxel-planes:weapon b17g.additional.500lb append value {kind:500lb,type:normal,offset:[0.3d,0d,4.4d],damage:1140,weight:227.0f,cmd:164}
data modify storage voxel-planes:weapon b17g.additional.500lb append value {kind:500lb,type:normal,offset:[0.3d,0.5d,4.4d],damage:1140,weight:227.0f,cmd:164}
data modify storage voxel-planes:weapon b17g.additional.500lb append value {kind:500lb,type:normal,offset:[-0.8d,-0.5d,4.4d],damage:1140,weight:227.0f,cmd:164}
data modify storage voxel-planes:weapon b17g.additional.500lb append value {kind:500lb,type:normal,offset:[-0.8d,0d,4.4d],damage:1140,weight:227.0f,cmd:164}
data modify storage voxel-planes:weapon b17g.additional.500lb append value {kind:500lb,type:normal,offset:[-0.8d,0.5d,4.4d],damage:1140,weight:227.0f,cmd:164}
data modify storage voxel-planes:weapon b17g.additional.500lb append value {kind:500lb,type:normal,offset:[-0.3d,-0.5d,4.4d],damage:1140,weight:227.0f,cmd:164}
data modify storage voxel-planes:weapon b17g.additional.500lb append value {kind:500lb,type:normal,offset:[-0.3d,0d,4.4d],damage:1140,weight:227.0f,cmd:164}
data modify storage voxel-planes:weapon b17g.additional.500lb append value {kind:500lb,type:normal,offset:[-0.3d,0.5d,4.4d],damage:1140,weight:227.0f,cmd:164}
data modify storage voxel-planes:weapon b17g.additional.1000lb set value [{kind:1000lb,type:normal,offset:[0.6d,-0.4d,4.4d],damage:2270,weight:500,cmd:122}]
data modify storage voxel-planes:weapon b17g.additional.1000lb append value {kind:1000lb,type:normal,offset:[0.6d,0.2d,4.4d],damage:2270,weight:500,cmd:122}
data modify storage voxel-planes:weapon b17g.additional.1000lb append value {kind:1000lb,type:normal,offset:[0.6d,0.8d,4.4d],damage:2270,weight:500,cmd:122}
data modify storage voxel-planes:weapon b17g.additional.1000lb append value {kind:1000lb,type:normal,offset:[-0.6d,-0.4d,4.4d],damage:2270,weight:500,cmd:122}
data modify storage voxel-planes:weapon b17g.additional.1000lb append value {kind:1000lb,type:normal,offset:[-0.6d,0.2d,4.4d],damage:2270,weight:500,cmd:122}
data modify storage voxel-planes:weapon b17g.additional.1000lb append value {kind:1000lb,type:normal,offset:[-0.6d,0.8d,4.4d],damage:2270,weight:500,cmd:122}
