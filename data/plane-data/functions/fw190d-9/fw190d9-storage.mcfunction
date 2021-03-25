#> plane-data:fw190d-9/fw190d9-storage
#
# @within function constructor:addstorage

data modify storage voxel-planes:weapon fw190d9 set value {base:{},additional:{}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon fw190d9.base.20mm set value {data:{name:"20mm gun",type:gun,size:20mm,max-ammunition:250,current-ammunition:250,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"lightgreen",damage:90,speed:9d,bullets:[{offset:[0.96d,-0.1d,2.2d]},{offset:[-1d,-0.1d,2.2d]}]}}
data modify storage voxel-planes:weapon fw190d9.base.13mm set value {data:{name:"13mm gun",type:gun,size:13mm,max-ammunition:450,current-ammunition:450,max-cooltime:1,current-cooltime:0,max-reload:220,current-reload:0,tracer:"lightblue",damage:8,speed:11,bullets:[{offset:[0.09d,1d,1.9d]},{offset:[-0.15d,1d,1.9d]}]}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon fw190d9.base.bomb set value {data:{name:bomb,type:bomb,max-ammunition:1,current-ammunition:1,max-reload:3600,current-reload:0,bombs:[]}}
data modify storage voxel-planes:weapon fw190d9.additional set value {500kg:[{weight:500kg,type:normal,offset:[0d,-0.7d,0.3d],damage:2500,acc-cor:-6,pitch-cor:-20,yaw-cor:-12,cmd:124}]}

