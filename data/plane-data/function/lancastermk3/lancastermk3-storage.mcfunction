#> plane-data:lancastermk3/lancastermk3-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon lancastermk3 set value {base:{},additional:{}}
data modify storage voxel-planes:plane lancastermk3 set value {}

#飛行機データセット
data modify storage voxel-planes:plane lancastermk3.plane-data.name set value lancastermk3
data modify storage voxel-planes:plane lancastermk3.plane-data.plane-type set value bomber
data modify storage voxel-planes:plane lancastermk3.plane-data.tier set value 4
data modify storage voxel-planes:plane lancastermk3.plane-data.flight-model.weight set value 22680
data modify storage voxel-planes:plane lancastermk3.plane-data.flight-model.speed set value {max-speed:461.9f,cruise-speed:338f,climb-rate:2.4f,stall-speed:152.9f}
data modify storage voxel-planes:plane lancastermk3.plane-data.flight-model.engine set value {type:recipro,horse-power:1640f,number:4}
data modify storage voxel-planes:plane lancastermk3.plane-data.flight-model.turn-rate set value {pitch:14.6f,yaw:9.7f,roll:18f}
data modify storage voxel-planes:plane lancastermk3.plane-data.flight-model.energy-loss-rate set value 0.7
data modify storage voxel-planes:plane lancastermk3.plane-data.model-data.body set value {parking-cmd:191,rolling-cmd:192,flying-cmd:193}
data modify storage voxel-planes:plane lancastermk3.plane-data.model-data.landing-pitch set value -8.0
data modify storage voxel-planes:plane lancastermk3.plane-data.model-data.scale set value [31.09f,31.09f,31.09f]
data modify storage voxel-planes:plane lancastermk3.plane-data.model-data.translation set value [0f,0.8f,0f]
data modify storage voxel-planes:plane lancastermk3.plane-data.model-data.central-axis-offset set value 3.23
data modify storage voxel-planes:plane lancastermk3.plane-data.seat.position.ridden set value {x:0,y:4,z:-10}
data modify storage voxel-planes:plane lancastermk3.plane-data.seat.position.vacant set value {x:0,y:2,z:6.8}
data modify storage voxel-planes:plane lancastermk3.plane-data.hitbox set value {}
data modify storage voxel-planes:plane lancastermk3.plane-data.hitbox merge value {engine-r:{max-hp:210d,offset:[-3.6d,-1d,5d],width:1f,height:1f},engine-l:{max-hp:210d,offset:[3.6d,-1d,5d],width:1f,height:1f},engine-r2:{max-hp:210d,offset:[-7.8d,-0.6d,4.7d],width:1f,height:1f},engine-l2:{max-hp:210d,offset:[7.8d,-0.6d,4.7d],width:1f,height:1f}}
data modify storage voxel-planes:plane lancastermk3.plane-data.hitbox merge value {aileron-r:{max-hp:200d,offset:[-5.4d,-1d,1d],width:3f,height:3f},aileron-l:{max-hp:200d,offset:[5.4d,-1d,1d],width:3f,height:3f},aileron-r2:{max-hp:200d,offset:[-10.4d,-0.5d,1d],width:2f,height:2f},aileron-l2:{max-hp:200d,offset:[10.4d,-0.5d,1d],width:2f,height:2f}}
data modify storage voxel-planes:plane lancastermk3.plane-data.hitbox merge value {elevator-r:{max-hp:170d,offset:[-2.8d,-0.8d,-10d],width:1.5f,height:1.5f},elevator-l:{max-hp:170d,offset:[2.8d,-0.8d,-10d],width:1.5f,height:1.5f}}
data modify storage voxel-planes:plane lancastermk3.plane-data.hitbox merge value {radder-r:{max-hp:180d,offset:[-5.5d,1d,-9.7d],width:1f,height:1f},radder-l:{max-hp:180d,offset:[5.5d,1d,-9.7d],width:1f,height:1f}}
data modify storage voxel-planes:plane lancastermk3.plane-data.hitbox merge value {cockpit:{offset:[0d,1d,6.3d],width:1f,height:1f}}
data modify storage voxel-planes:plane lancastermk3.plane-data.hitbox merge value {body:{max-hp:230d,offset:[0d,-1d,0d],width:2f,height:2f}}


#デフォルト爆弾データセット
data modify storage voxel-planes:weapon lancastermk3.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:0,current-ammunition:0,max-reload:600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon lancastermk3.additional.500lb set value [{kind:500lb,type:normal,offset:[0.5d,-0.5d,0.5d],damage:1140,weight:227.0f,cmd:132}]
data modify storage voxel-planes:weapon lancastermk3.additional.500lb append value {kind:500lb,type:normal,offset:[0.0d,-0.5d,0.5d],damage:1140,weight:227.0f,cmd:132}
data modify storage voxel-planes:weapon lancastermk3.additional.500lb append value {kind:500lb,type:normal,offset:[-0.5d,-0.5d,0.5d],damage:1140,weight:227.0f,cmd:132}
data modify storage voxel-planes:weapon lancastermk3.additional.500lb append value {kind:500lb,type:normal,offset:[0.5d,-0.5d,2.3d],damage:1140,weight:227.0f,cmd:132}
data modify storage voxel-planes:weapon lancastermk3.additional.500lb append value {kind:500lb,type:normal,offset:[0.0d,-0.5d,2.3d],damage:1140,weight:227.0f,cmd:132}
data modify storage voxel-planes:weapon lancastermk3.additional.500lb append value {kind:500lb,type:normal,offset:[-0.5d,-0.5d,2.3d],damage:1140,weight:227.0f,cmd:132}
data modify storage voxel-planes:weapon lancastermk3.additional.500lb append value {kind:500lb,type:normal,offset:[0.5d,-0.5d,4.1d],damage:1140,weight:227.0f,cmd:132}
data modify storage voxel-planes:weapon lancastermk3.additional.500lb append value {kind:500lb,type:normal,offset:[0.0d,-0.5d,4.1d],damage:1140,weight:227.0f,cmd:132}
data modify storage voxel-planes:weapon lancastermk3.additional.500lb append value {kind:500lb,type:normal,offset:[-0.5d,-0.5d,4.1d],damage:1140,weight:227.0f,cmd:132}
data modify storage voxel-planes:weapon lancastermk3.additional.500lb append value {kind:500lb,type:normal,offset:[0.5d,-0.5d,-1.3d],damage:1140,weight:227.0f,cmd:132}
data modify storage voxel-planes:weapon lancastermk3.additional.500lb append value {kind:500lb,type:normal,offset:[0.0d,-0.5d,-1.3d],damage:1140,weight:227.0f,cmd:132}
data modify storage voxel-planes:weapon lancastermk3.additional.500lb append value {kind:500lb,type:normal,offset:[-0.5d,-0.5d,-1.3d],damage:1140,weight:227.0f,cmd:132}
data modify storage voxel-planes:weapon lancastermk3.additional.1000lb set value [{kind:1000lb,type:normal,offset:[-0.5d,-0.5d,-1.5d],damage:2270,weight:500,cmd:133}]
data modify storage voxel-planes:weapon lancastermk3.additional.1000lb append value {kind:1000lb,type:normal,offset:[0d,-0.5d,-1.5d],damage:2270,weight:500,cmd:133}
data modify storage voxel-planes:weapon lancastermk3.additional.1000lb append value {kind:1000lb,type:normal,offset:[0.5d,-0.5d,-1.5d],damage:2270,weight:500,cmd:133}
data modify storage voxel-planes:weapon lancastermk3.additional.1000lb append value {kind:1000lb,type:normal,offset:[-0.5d,-0.5d,3.5d],damage:2270,weight:500,cmd:133}
data modify storage voxel-planes:weapon lancastermk3.additional.1000lb append value {kind:1000lb,type:normal,offset:[0d,-0.5d,3.5d],damage:2270,weight:500,cmd:133}
data modify storage voxel-planes:weapon lancastermk3.additional.1000lb append value {kind:1000lb,type:normal,offset:[0.5d,-0.5d,3.5d],damage:2270,weight:500,cmd:133}
data modify storage voxel-planes:weapon lancastermk3.additional.4000lb set value [{kind:4000lb,type:normal,offset:[0d,-0.5d,1d],damage:9080,weight:1816,cmd:25}]
