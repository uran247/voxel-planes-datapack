#> plane-data:n1k2/n1k2-storage
#
# @within function constructor:addstorage

data modify storage voxel-planes:weapon n1k2 set value {base:{},additional:{}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon n1k2.base.20mm set value {data:{name:"20mm gun",type:gun,size:20mm,max-ammunition:225,current-ammunition:225,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"orange",damage:72,speed:9.5d,bullets:[{offset:[2.22d,-0.35d,3d]},{offset:[-2.22d,-0.35d,3d]},{offset:[2.54d,-0.35d,3d]},{offset:[-2.54d,-0.35d,3d]}]}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon n1k2.base.bomb set value {data:{name:bomb,type:bomb,max-ammunition:2,current-ammunition:2,max-reload:3600,current-reload:0,bombs:[]}}
data modify storage voxel-planes:weapon n1k2.additional set value {250kg:[{weight:250kg,type:normal,offset:[-2.6d,-0.7d,1.2d],damage:1250,acc-cor:-1,pitch-cor:-3,yaw-cor:-1,cmd:77},{weight:250kg,type:normal,offset:[2.6d,-0.7d,1.2d],damage:1250,acc-cor:-1,pitch-cor:-3,yaw-cor:-1,cmd:77}]}

