#> plane-data:a6m2/a6m2-storage
#
# @within function constructor:addstorage

data modify storage voxel-planes:weapon a6m2 set value {base:{},additional:{}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon a6m2.base.20mm set value {data:{name:"20mm gun",type:gun,size:20mm,max-ammunition:60,current-ammunition:60,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"yellow",damage:60,speed:7.5d,bullets:[{offset:[1.95d,0.2d,2.1d]},{offset:[-2.05d,0.2d,2.1d]}]}}
data modify storage voxel-planes:weapon a6m2.base.7p7mm set value {data:{name:"7.7mm gun",type:gun,size:7p7mm,max-ammunition:700,current-ammunition:700,max-cooltime:1,current-cooltime:0,max-reload:140,current-reload:0,tracer:"lightblue",damage:9,speed:9.5,bullets:[{offset:[0.22d,0.55d,2.5d]},{offset:[-0.26d,0.55d,2.5d]}]}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon a6m2.base.bomb set value {data:{name:bomb,type:bomb,max-ammunition:2,current-ammunition:2,max-reload:3600,current-reload:0,bombs:[]}}
data modify storage voxel-planes:weapon a6m2.additional set value {60kg:[{weight:60kg,type:normal,offset:[-3.1d,-0.6d,1d],damage:300,acc-cor:-1,pitch-cor:-2,yaw-cor:-2,cmd:76},{weight:60kg,type:normal,offset:[3.1d,-0.6d,1d],damage:300,acc-cor:-1,pitch-cor:-2,yaw-cor:-2,cmd:76}]}

