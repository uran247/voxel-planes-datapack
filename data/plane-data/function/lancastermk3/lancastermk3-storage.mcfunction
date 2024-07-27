#> plane-data:lancastermk3/lancastermk3-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon lancastermk3 set value {base:{},additional:{}}
data modify storage voxel-planes:plane lancastermk3 set value {}

#飛行機データセット
data modify storage voxel-planes:plane lancastermk3.plane-data.plane-type set value bomber
data modify storage voxel-planes:plane lancastermk3.plane-data.tier set value 4
data modify storage voxel-planes:plane lancastermk3.plane-data.flight-model.weight set value 22680
data modify storage voxel-planes:plane lancastermk3.plane-data.flight-model.speed set value {max-speed:461.9f,cruise-speed:338f,climb-rate:2.4f,stall-speed:152.9f}
data modify storage voxel-planes:plane lancastermk3.plane-data.flight-model.engine set value {type:recipro,horse-power:1640f,number:4}
data modify storage voxel-planes:plane lancastermk3.plane-data.flight-model.turn-rate set value {pitch:14.6f,yaw:9.7f,roll:18f}
data modify storage voxel-planes:plane lancastermk3.plane-data.flight-model.energy-loss-rate set value 0.7
data modify storage voxel-planes:plane lancastermk3.plane-data.model-data.body set value {parking-cmd:191,rolling-cmd:192,flying-cmd:193}
data modify storage voxel-planes:plane lancastermk3.plane-data.model-data.rightwing set value {parking-cmd:194,rolling-cmd:197,flying-cmd:197,offset:[-4.915d,0d,0.1d]}
data modify storage voxel-planes:plane lancastermk3.plane-data.model-data.leftwing set value {parking-cmd:195,rolling-cmd:198,flying-cmd:198,offset:[4.835d,0d,0d]}
data modify storage voxel-planes:plane lancastermk3.plane-data.model-data.tail set value {offset:[0d,0d,-1.25d]}
data modify storage voxel-planes:plane lancastermk3.plane-data.model-data.landing-pitch set value -7.0
data modify storage voxel-planes:plane lancastermk3.plane-data.hitbox set value {}
data modify storage voxel-planes:plane lancastermk3.plane-data.hitbox merge value {engine-r:{max-hp:210d,offset:[-2.6d,0.25d,7.3d]},engine-l:{max-hp:210d,offset:[2.6d,0.25d,7.3d]},engine-r2:{max-hp:210d,offset:[-5.6d,0.25d,7.3d]},engine-l2:{max-hp:210d,offset:[5.6d,0.25d,7.3d]}}
data modify storage voxel-planes:plane lancastermk3.plane-data.hitbox merge value {aileron-r:{max-hp:200d,offset:[-5.4d,0d,4.2d]},aileron-l:{max-hp:200d,offset:[5.4d,0d,4.2d]},aileron-r2:{max-hp:200d,offset:[-10.4d,0.8d,4.2d]},aileron-l2:{max-hp:200d,offset:[10.4d,0.8d,4.2d]}}
data modify storage voxel-planes:plane lancastermk3.plane-data.hitbox merge value {elevator-r:{max-hp:170d,offset:[-2.8d,0.6d,-5.7d]},elevator-l:{max-hp:170d,offset:[2.8d,0.6d,-5.7d]}}
data modify storage voxel-planes:plane lancastermk3.plane-data.hitbox merge value {radder-r:{max-hp:180d,offset:[-4d,3d,-4d]},radder-l:{max-hp:180d,offset:[4d,3d,-4d]}}
data modify storage voxel-planes:plane lancastermk3.plane-data.hitbox merge value {cockpit:{offset:[0d,3d,0d]}}
data modify storage voxel-planes:plane lancastermk3.plane-data.hitbox merge value {body:{max-hp:230d,offset:[0d,0d,0d]}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon lancastermk3.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:0,current-ammunition:0,max-reload:600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon lancastermk3.additional.500lb set value [{kind:500lb,type:normal,offset:[0.8d,0.5d,4.4d],damage:1140,weight:227.0f,cmd:132}]
data modify storage voxel-planes:weapon lancastermk3.additional.500lb append value {kind:500lb,type:normal,offset:[0.8d,1d,4.4d],damage:1140,weight:227.0f,cmd:132}
data modify storage voxel-planes:weapon lancastermk3.additional.500lb append value {kind:500lb,type:normal,offset:[0.8d,1.5d,4.4d],damage:1140,weight:227.0f,cmd:132}
data modify storage voxel-planes:weapon lancastermk3.additional.500lb append value {kind:500lb,type:normal,offset:[0.3d,0.5d,4.4d],damage:1140,weight:227.0f,cmd:132}
data modify storage voxel-planes:weapon lancastermk3.additional.500lb append value {kind:500lb,type:normal,offset:[0.3d,1d,4.4d],damage:1140,weight:227.0f,cmd:132}
data modify storage voxel-planes:weapon lancastermk3.additional.500lb append value {kind:500lb,type:normal,offset:[0.3d,1.5d,4.4d],damage:1140,weight:227.0f,cmd:132}
data modify storage voxel-planes:weapon lancastermk3.additional.500lb append value {kind:500lb,type:normal,offset:[-0.8d,0.5d,4.4d],damage:1140,weight:227.0f,cmd:132}
data modify storage voxel-planes:weapon lancastermk3.additional.500lb append value {kind:500lb,type:normal,offset:[-0.8d,1d,4.4d],damage:1140,weight:227.0f,cmd:132}
data modify storage voxel-planes:weapon lancastermk3.additional.500lb append value {kind:500lb,type:normal,offset:[-0.8d,1.5d,4.4d],damage:1140,weight:227.0f,cmd:132}
data modify storage voxel-planes:weapon lancastermk3.additional.500lb append value {kind:500lb,type:normal,offset:[-0.3d,0.5d,4.4d],damage:1140,weight:227.0f,cmd:132}
data modify storage voxel-planes:weapon lancastermk3.additional.500lb append value {kind:500lb,type:normal,offset:[-0.3d,1d,4.4d],damage:1140,weight:227.0f,cmd:132}
data modify storage voxel-planes:weapon lancastermk3.additional.500lb append value {kind:500lb,type:normal,offset:[-0.3d,1.5d,4.4d],damage:1140,weight:227.0f,cmd:132}
data modify storage voxel-planes:weapon lancastermk3.additional.1000lb set value [{kind:1000lb,type:normal,offset:[0.6d,0.6d,4.4d],damage:2270,weight:500,cmd:133}]
data modify storage voxel-planes:weapon lancastermk3.additional.1000lb append value {kind:1000lb,type:normal,offset:[0.6d,1.2d,4.4d],damage:2270,weight:500,cmd:133}
data modify storage voxel-planes:weapon lancastermk3.additional.1000lb append value {kind:1000lb,type:normal,offset:[0.6d,1.8d,4.4d],damage:2270,weight:500,cmd:133}
data modify storage voxel-planes:weapon lancastermk3.additional.1000lb append value {kind:1000lb,type:normal,offset:[-0.6d,0.6d,4.4d],damage:2270,weight:500,cmd:133}
data modify storage voxel-planes:weapon lancastermk3.additional.1000lb append value {kind:1000lb,type:normal,offset:[-0.6d,1.2d,4.4d],damage:2270,weight:500,cmd:133}
data modify storage voxel-planes:weapon lancastermk3.additional.1000lb append value {kind:1000lb,type:normal,offset:[-0.6d,1.8d,4.4d],damage:2270,weight:500,cmd:133}
data modify storage voxel-planes:weapon lancastermk3.additional.4000lb set value [{kind:4000lb,type:normal,offset:[0d,1d,3d],damage:9000,weight:1816,cmd:171}]
