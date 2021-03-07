#> plane-data:ki-61/ki61-storage
#
# @within function constructor:addstorage

data modify storage voxel-planes:weapon ki61 set value {base:{},additional:{}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon ki61.base.20mm set value {data:{name:"20mm gun",type:gun,size:20mm,max-ammunition:120,current-ammunition:120,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"yellow",damage:60,speed:9d,bullets:[{offset:[2.2d,-0.18d,2.2d]},{offset:[-2.2d,-0.18d,2.2d]}]}}
data modify storage voxel-planes:weapon ki61.base.12p7mm set value {data:{name:"12.7mm gun",type:gun,size:12p7mm,max-ammunition:250,current-ammunition:250,max-cooltime:2,current-cooltime:0,max-reload:210,current-reload:0,tracer:"yellow",damage:38,speed:10d,bullets:[{offset:[0.14d,0.63d,2.2d]},{offset:[-0.14d,0.63d,2.2d]}]}}
data modify storage voxel-planes:weapon ki61.additional.20mm set value {data:{name:"20mm gun",type:gun,size:20mm,max-ammunition:120,current-ammunition:120,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"lightgreen",damage:80,speed:9d,bullets:[{offset:[2.2d,-0.18d,2.2d]},{offset:[-2.2d,-0.18d,2.2d]}]}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon ki61.base.bomb set value {data:{name:bomb,type:bomb,max-ammunition:2,current-ammunition:2,max-reload:3600,current-reload:0,bombs:[]}}
data modify storage voxel-planes:weapon ki61.additional.250kg set value [{weight:250kg,type:normal,offset:[-2.6d,-0.7d,1.5d],damage:1250,acc-cor:-4,pitch-cor:-8,yaw-cor:-5,cmd:77},{weight:250kg,type:normal,offset:[2.6d,-0.7d,1.5d],damage:1250,acc-cor:-4,pitch-cor:-8,yaw-cor:-5,cmd:77}]
