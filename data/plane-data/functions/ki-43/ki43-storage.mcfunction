#> plane-data:ki-43/ki43-storage
#
# @within function constructor:addstorage

data modify storage voxel-planes:weapon ki43 set value {base:{},additional:{}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon ki43.base.7p7mm set value {data:{name:"7.7mm gun",type:gun,size:7p7mm,max-ammunition:500,current-ammunition:500,max-cooltime:1,current-cooltime:0,max-reload:280,current-reload:0,tracer:"yellow",damage:9,speed:9.5d,bullets:[{offset:[0.1d,0.75d,0d]},{offset:[-0.15d,0.75d,0d]}]}}
data modify storage voxel-planes:weapon ki43.additional set value {12p7mm:{data:{name:"12.7mm gun",type:gun,size:12p7mm,max-ammunition:270,current-ammunition:270,max-cooltime:2,current-cooltime:0,max-reload:210,current-reload:0,tracer:"yellow",damage:27,speed:10d,bullets:[{offset:[0.1d,0.75d,0d]},{offset:[-0.15d,0.75d,0d]}]}}}
