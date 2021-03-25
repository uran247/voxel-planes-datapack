#> plane-data:me262a-1a/me262a1a-storage
#
# @within function constructor:addstorage

data modify storage voxel-planes:weapon me262a1a set value {base:{},additional:{}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon me262a1a.base.30mm set value {data:{name:"30mm gun",type:gun,size:30mm,max-ammunition:250,current-ammunition:250,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"lightgreen",damage:90,speed:9d,bullets:[{offset:[0.96d,-0.1d,2.2d]},{offset:[-1d,-0.1d,2.2d]}]}}

