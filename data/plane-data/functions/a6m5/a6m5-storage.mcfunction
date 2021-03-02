#> plane-data:a6m5/a6m5-storage
#
# @within function constructor:addstorage

data modify storage voxel-planes:weapon a6m5 set value {base:{},additional:{}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon a6m5.base.20mm set value {data:{name:"20mm gun",type:gun,size:20mm,max-ammunition:125,current-ammunition:125,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"yellow",damage:72,speed:9.5d,bullets:[{offset:[1.9d,0.2d,2.1d]},{offset:[-1.95d,0.2d,2.1d]}]}}
data modify storage voxel-planes:weapon a6m5.base.7p7mm set value {data:{name:"7.7mm gun",type:gun,size:7p7mm,max-ammunition:700,current-ammunition:700,max-cooltime:1,current-cooltime:0,max-reload:140,current-reload:0,tracer:"lightblue",damage:11,speed:9.5,bullets:[{offset:[0.15d,0.55d,2.5d]},{offset:[-0.25d,0.55d,2.5d]}]}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon a6m5.base.bomb set value {data:{name:bomb,type:bomb,max-ammunition:2,current-ammunition:2,max-reload:3600,current-reload:0,bombs:[]}}
data modify storage voxel-planes:weapon a6m5.additional set value {60kg:[{weight:60kg,type:normal,offset:[-3d,-0.55d,0.5d],damage:300,acc-cor:-1,pitch-cor:-2,yaw-cor:-2,cmd:76},{weight:60kg,type:normal,offset:[3d,-0.55d,0.5d],damage:300,acc-cor:-1,pitch-cor:-2,yaw-cor:-2,cmd:76}]}

