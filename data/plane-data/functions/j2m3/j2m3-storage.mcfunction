#> plane-data:j2m3/j2m3-storage
#
# @within function constructor:addstorage

data modify storage voxel-planes:weapon j2m3 set value {base:{},additional:{}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon j2m3.base.model1-20mm set value {data:{name:"Model1 20mm gun",type:gun,size:20mm,max-ammunition:100,current-ammunition:100,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"yellow",damage:60,speed:7.5d,bullets:[{offset:[2.26d,-0.35d,2.7d]},{offset:[-2.46d,-0.35d,2.7d]}]}}
data modify storage voxel-planes:weapon j2m3.base.model2-20mm set value {data:{name:"Model2 20mm gun",type:gun,size:20mm,max-ammunition:100,current-ammunition:100,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"lightblue",damage:60,speed:9.5,bullets:[{offset:[1.86d,-0.4d,3.2d]},{offset:[-2.08d,-0.4d,3.2d]}]}}
