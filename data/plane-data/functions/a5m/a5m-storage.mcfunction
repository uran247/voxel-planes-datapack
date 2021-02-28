#> plane-data:a5m/a5m-storage
#
# @within function constructor:addstorage

data modify storage voxel-planes:weapon a5m set value {base:{},additional:{}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon a5m.base.gun set value {data:{name:"7.7mm gun",type:gun,size:7p7mm,max-ammunition:500,current-ammunition:500,max-cooltime:1,current-cooltime:0,max-reload:140,current-reload:0,tracer:"lightblue",damage:9,speed:95,bullets:[{offset:[120,220,3120]},{offset:[-188,220,3120]}]}}
