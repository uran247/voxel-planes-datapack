#> plane-data:b7a/b7a-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon b7a set value {base:{},additional:{}}
data modify storage voxel-planes:plane b7a set value {}

#飛行機データセット
data modify storage voxel-planes:plane b7a.plane-data.plane-type set value bomber
data modify storage voxel-planes:plane b7a.plane-data.tier set value 4
data modify storage voxel-planes:plane b7a.plane-data.flight-model.weight set value 4940
data modify storage voxel-planes:plane b7a.plane-data.flight-model.speed set value {max-speed:567f,cruise-speed:374f,climb-rate:9.7f,stall-speed:105f}
data modify storage voxel-planes:plane b7a.plane-data.flight-model.engine set value {type:recipro,horse-power:2200,number:1}
data modify storage voxel-planes:plane b7a.plane-data.flight-model.turn-rate set value {pitch:26.2f,yaw:18.4f,roll:53.8f}
data modify storage voxel-planes:plane b7a.plane-data.flight-model.energy-loss-rate set value 0.3
data modify storage voxel-planes:plane b7a.plane-data.model-data.body set value {parking-cmd:207,rolling-cmd:208,flying-cmd:209}
data modify storage voxel-planes:plane b7a.plane-data.model-data.landing-pitch set value -11.5
data modify storage voxel-planes:plane b7a.plane-data.hitbox set value {}
data modify storage voxel-planes:plane b7a.plane-data.hitbox merge value {body:{max-hp:140d,offset:[0d,0d,0d]}}
data modify storage voxel-planes:plane b7a.plane-data.hitbox merge value {engine:{max-hp:120d,offset:[0d,0d,3d]}}
data modify storage voxel-planes:plane b7a.plane-data.hitbox merge value {aileron-r:{max-hp:110d,offset:[-4d,-0.1d,1d]},aileron-l:{max-hp:110d,offset:[4d,-0.1d,1d]}}
data modify storage voxel-planes:plane b7a.plane-data.hitbox merge value {elevator-r:{max-hp:90d,offset:[-1.2d,0.1d,-4.9d]},elevator-l:{max-hp:90d,offset:[1.2d,0.1d,-4.9d]}}
data modify storage voxel-planes:plane b7a.plane-data.hitbox merge value {radder:{max-hp:100d,offset:[0d,1.1d,-4.9d]}}
data modify storage voxel-planes:plane b7a.plane-data.hitbox merge value {cockpit:{offset:[0d,0.9d,0.9d]}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon b7a.base.gun set value {data:{name:"20mm",type:gun,size:20mm,max-ammunition:200,current-ammunition:200,max-cooltime:2,current-cooltime:0,max-reload:320,current-reload:0,tracer:"yellow",damage:90,speed:9.5,bullets:[{offset:[2d,1.3d,4.7d]},{offset:[-2d,1.3d,4.7d]}]}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon b7a.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:0,current-ammunition:0,max-reload:600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon b7a.additional.250kg set value [{kind:250kg,type:normal,offset:[-0d,-0.6d,3.5d],damage:1250,weight:250,cmd:77}]
data modify storage voxel-planes:weapon b7a.additional.250kg append value {kind:250kg,type:normal,offset:[-0d,0d,3.5d],damage:1250,weight:250,cmd:77}

#魚雷データセット
data modify storage voxel-planes:weapon b7a.base.torpedo.data set value {name:torpedo,type:torpedo,max-ammunition:0,current-ammunition:0,max-reload:500,current-reload:0,torpedos:[]}
data modify storage voxel-planes:weapon b7a.additional.torpedo set value [{kind:1600lb,type:normal,offset:[1d,-0.4d,0d],damage:3600,weight:680,cmd:48}]
