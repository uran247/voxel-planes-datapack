#> plane-data:mosquitobmk16/mosquitobmk16-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon mosquitobmk16 set value {base:{},additional:{}}
data modify storage voxel-planes:plane mosquitobmk16 set value {}

#飛行機データセット
data modify storage voxel-planes:plane mosquitobmk16.plane-data.plane-type set value bomber
data modify storage voxel-planes:plane mosquitobmk16.plane-data.tier set value 3
data modify storage voxel-planes:plane mosquitobmk16.plane-data.flight-model.weight set value 8210
data modify storage voxel-planes:plane mosquitobmk16.plane-data.flight-model.speed set value {max-speed:668.0f,cruise-speed:525.0f,climb-rate:14.5f,stall-speed:160.0f}
data modify storage voxel-planes:plane mosquitobmk16.plane-data.flight-model.engine set value {type:recipro,horse-power:1710f,number:2}
data modify storage voxel-planes:plane mosquitobmk16.plane-data.flight-model.turn-rate set value {pitch:25.7f,yaw:20.5f,roll:100f}
data modify storage voxel-planes:plane mosquitobmk16.plane-data.flight-model.energy-loss-rate set value 0.6
data modify storage voxel-planes:plane mosquitobmk16.plane-data.model-data.body set value {parking-cmd:165,rolling-cmd:166,flying-cmd:167}
data modify storage voxel-planes:plane mosquitobmk16.plane-data.model-data.tail set value {parking-cmd:168,rolling-cmd:168,flying-cmd:169}
data modify storage voxel-planes:plane mosquitobmk16.plane-data.model-data.landing-pitch set value -11.0
data modify storage voxel-planes:plane mosquitobmk16.plane-data.hitbox set value {}
data modify storage voxel-planes:plane mosquitobmk16.plane-data.hitbox merge value {engine-r:{max-hp:170,offset:[-2,0,5]},engine-l:{max-hp:170,offset:[2,0,5]}}
data modify storage voxel-planes:plane mosquitobmk16.plane-data.hitbox merge value {aileron-r:{max-hp:160,offset:[-5,0,0]},aileron-l:{max-hp:160,offset:[5,0,0]}}
data modify storage voxel-planes:plane mosquitobmk16.plane-data.hitbox merge value {elevator-r:{max-hp:140,offset:[-5,1,-6]},elevator-l:{max-hp:140,offset:[5,1,-6]}}
data modify storage voxel-planes:plane mosquitobmk16.plane-data.hitbox merge value {radder:{max-hp:150,offset:[0,2,-5]}}
data modify storage voxel-planes:plane mosquitobmk16.plane-data.hitbox merge value {cockpit:{offset:[0,1,0]}}
data modify storage voxel-planes:plane mosquitobmk16.plane-data.hitbox merge value {body:{max-hp:180,offset:[0,0,0]}}

#デフォルト機銃データセット

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon mosquitobmk16.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:0,current-ammunition:0,max-reload:600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon mosquitobmk16.additional.500lb set value [{kind:500lb,type:normal,offset:[-0.3d,-0.5d,2d],damage:1100,weight:227,cmd:132}]
data modify storage voxel-planes:weapon mosquitobmk16.additional.500lb append value {kind:500lb,type:normal,offset:[-0.3d,-0.5d,3.5d],damage:1100,weight:227,cmd:132}
data modify storage voxel-planes:weapon mosquitobmk16.additional.500lb append value {kind:500lb,type:normal,offset:[0.3d,-0.5d,2d],damage:1100,weight:227,cmd:132}
data modify storage voxel-planes:weapon mosquitobmk16.additional.500lb append value {kind:500lb,type:normal,offset:[0.3d,-0.5d,3.5d],damage:1100,weight:227,cmd:132}
data modify storage voxel-planes:weapon mosquitobmk16.additional.4000lb set value [{kind:4000lb,type:normal,offset:[0d,0d,3d],damage:9000,weight:1816,cmd:171}]

#デフォルトロケット弾データセット
