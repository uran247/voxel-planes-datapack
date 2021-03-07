#> plane-data:ki-44/ki44-storage
#
# @within function constructor:addstorage

data modify storage voxel-planes:weapon ki44 set value {base:{},additional:{}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon ki44.base.12p7mm set value {data:{name:"12.7mm gun",type:gun,size:12p7mm,max-ammunition:250,current-ammunition:250,max-cooltime:2,current-cooltime:0,max-reload:210,current-reload:0,tracer:"orange",damage:32,speed:10d,bullets:[{offset:[0.2d,0.6d,3.3d]},{offset:[-0.2d,0.6d,3.3d]},{offset:[1.74d,0.6d,3.3d]},{offset:[-1.74d,0.6d,3.3d]}]}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon ki44.base.bomb set value {data:{name:bomb,type:bomb,max-ammunition:2,current-ammunition:2,max-reload:3600,current-reload:0,bombs:[]}}
data modify storage voxel-planes:weapon ki44.additional set value {100kg:[{weight:100kg,type:normal,offset:[-2.6d,-0.7d,1.5d],damage:500,acc-cor:-1,pitch-cor:-3,yaw-cor:-1,cmd:117},{weight:100kg,type:normal,offset:[2.6d,-0.7d,1.5d],damage:500,acc-cor:-1,pitch-cor:-3,yaw-cor:-1,cmd:117}]}

