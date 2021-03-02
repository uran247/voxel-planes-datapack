#> plane-data:d3a/d3a-storage
#
# @within function constructor:addstorage

data modify storage voxel-planes:weapon d3a set value {base:{},additional:{}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon d3a.base.7p7mm set value {data:{name:"7.7mm gun",type:gun,size:7p7mm,max-ammunition:500,current-ammunition:500,max-cooltime:1,current-cooltime:0,max-reload:140,current-reload:0,tracer:"lightblue",damage:9,speed:9.5,bullets:[{offset:[0.21d,0.72d,0d]},{offset:[-0.21d,0.72d,0d]}]}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon d3a.base.bomb set value {data:{name:bomb,type:bomb,max-ammunition:3,current-ammunition:3,max-reload:500,current-reload:0,bombs:[{weight:60kg,type:normal,offset:[-4.62d,-0.58d,0.8d],damage:300,acc-cor:-1,pitch-cor:-2,yaw-cor:-2,cmd:76},{weight:60kg,type:normal,offset:[4.62d,-0.58d,0.8d],damage:300,acc-cor:-1,pitch-cor:-2,yaw-cor:-2,cmd:76},{weight:250kg,type:normal,offset:[0.075d,-0.9d,0.8d],damage:1250,acc-cor:-3,pitch-cor:-10,yaw-cor:-7,cmd:77}]}}

