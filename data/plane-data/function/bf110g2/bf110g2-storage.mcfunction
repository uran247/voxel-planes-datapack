#> plane-data:bf110g2/bf110g2-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon bf110g2 set value {base:{},additional:{}}
data modify storage voxel-planes:plane bf110g2 set value {}

#飛行機データセット
data modify storage voxel-planes:plane bf110g2.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane bf110g2.plane-data.tier set value 3
data modify storage voxel-planes:plane bf110g2.plane-data.flight-model.weight set value 8650
data modify storage voxel-planes:plane bf110g2.plane-data.flight-model.speed set value {max-speed:580f,cruise-speed:494f,climb-rate:11f,stall-speed:154f}
data modify storage voxel-planes:plane bf110g2.plane-data.flight-model.engine set value {type:recipro,horse-power:1480f,number:2}
data modify storage voxel-planes:plane bf110g2.plane-data.flight-model.turn-rate set value {pitch:31f,yaw:19f,roll:100f}
data modify storage voxel-planes:plane bf110g2.plane-data.flight-model.energy-loss-rate set value 0.6
data modify storage voxel-planes:plane bf110g2.plane-data.model-data.body set value {parking-cmd:187,rolling-cmd:188,flying-cmd:189}
data modify storage voxel-planes:plane bf110g2.plane-data.model-data.landing-pitch set value -10.5
data modify storage voxel-planes:plane bf110g2.plane-data.hitbox set value {}
data modify storage voxel-planes:plane bf110g2.plane-data.hitbox merge value {engine-r:{max-hp:160,offset:[-2d,0d,1d]},engine-l:{max-hp:160,offset:[2d,0d,1d]}}
data modify storage voxel-planes:plane bf110g2.plane-data.hitbox merge value {aileron-r:{max-hp:180,offset:[-4d,1d,0d]},aileron-l:{max-hp:180,offset:[4d,1d,0d]}}
data modify storage voxel-planes:plane bf110g2.plane-data.hitbox merge value {elevator-r:{max-hp:140,offset:[-1d,1.5d,-4d]},elevator-l:{max-hp:140,offset:[-1d,1.5d,-4d]}}
data modify storage voxel-planes:plane bf110g2.plane-data.hitbox merge value {radder-r:{max-hp:150,offset:[-2d,3d,-4d]},radder-l:{max-hp:150,offset:[2d,3d,-4d]}}
data modify storage voxel-planes:plane bf110g2.plane-data.hitbox merge value {cockpit:{offset:[0d,1d,2d]}}
data modify storage voxel-planes:plane bf110g2.plane-data.hitbox merge value {body:{max-hp:190,offset:[0d,0d,0d]}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon bf110g2.base.30mm set value {data:{name:"30mm gun",type:gun,size:30mm,max-ammunition:128,current-ammunition:128,max-cooltime:4,current-cooltime:0,max-reload:800,current-reload:0,tracer:"orange",damage:80,speed:6.8d,bullets:[{offset:[-0.5,0d,5d]},{offset:[0.5,0d,5d]}]}}
data modify storage voxel-planes:weapon bf110g2.base.20mm set value {data:{name:"20mm gun",type:gun,size:20mm,max-ammunition:375,current-ammunition:375,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"orange",damage:65,speed:9d,bullets:[{offset:[-0.5,-1d,5d]},{offset:[0.5,-1d,5d]}]}}

#デフォルト爆弾データセット
#data modify storage voxel-planes:weapon bf110g2.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:0,current-ammunition:0,max-reload:$RELOAD_TIME,current-reload:0,bombs:[]}
#data modify storage voxel-planes:weapon bf110g2.additional.$ADDITIONAL_WEAPOM set value [{kind:$WEPAON_KIND,type:$BOMB_TYPE,offset:[$X,$Y,$Z],damage:$DAMAGE,weight:$WEPAON_WEIGHT,cmd:$WEAPON_CMD}]

#デフォルトロケット弾データセット
#data modify storage voxel-planes:weapon bf110g2.base.rocket.data set value {name:rocket,type:rocket,max-ammunition:0,current-ammunition:0,max-reload:$RELOAD_TIME,current-reload:0,rockets:[]}
#data modify storage voxel-planes:weapon bf110g2.additional.$ADDITIONAL_WEAPOM set value [{kind:$WEPAON_KIND,type:$ROCKET_TYPE,offset:[$X,$Y,$Z],damage:$DAMAGE,weight:$WEPAON_WEIGHT,cmd:$WEAPON_CMD}]