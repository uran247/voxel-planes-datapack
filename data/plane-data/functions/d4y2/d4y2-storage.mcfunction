#> plane-data:d4y2/d4y2-storage
#
# @within function constructor:addstorage

data modify storage voxel-planes:weapon d4y2 set value {base:{},additional:{}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon d4y2.base.gun set value {data:{name:"7.7mm gun",type:gun,size:7p7mm,max-ammunition:400,current-ammunition:400,max-cooltime:1,current-cooltime:0,max-reload:140,current-reload:0,tracer:"lightblue",damage:11,speed:9.5d,bullets:[{offset:[0.11d,-1.85d,-6.1d]},{offset:[-0.4d,-1.85d,-6.1d]}]}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon d4y2.base.bomb set value {data:{name:bomb,type:bomb,max-ammunition:3,current-ammunition:3,max-reload:500,current-reload:0,bombs:[{weight:60kg,type:normal,offset:[-3.1d,-0.8d,3d],damage:300,acc-cor:-1,pitch-cor:-2,yaw-cor:-2,cmd:76},{weight:60kg,type:normal,offset:[3.1d,-0.8d,3d],damage:300,acc-cor:-1,pitch-cor:-2,yaw-cor:-2,cmd:76},{weight:250kg,type:normal,offset:[0d,-0.8d,3d],damage:1250,acc-cor:-3,pitch-cor:-10,yaw-cor:-10,cmd:77}]}}
data modify storage voxel-planes:weapon d4y2.additional set value {500kg:[{weight:500kg,type:normal,offset:[0d,-0.8d,3d],damage:2500,acc-cor:-6,pitch-cor:-20,yaw-cor:-20,cmd:105}]}

#デフォルトロケット弾データセット
data modify storage voxel-planes:weapon d4y2.base.rocket set value {data:{name:rocket,type:rocket,max-ammunition:4,current-ammunition:4,max-reload:500,current-reload:0,rockets:[]}}
data modify storage voxel-planes:weapon d4y2.additional merge value {aa-rocket:[{type:normal,damage:50,offset:[-3.1d,-0.6d,3d],acc-cor:-1,pitch-cor:-1,yaw-cor:-1,weight:10kg,cmd:106},{type:normal,damage:50,offset:[3.1d,-0.6d,3d],acc-cor:-1,pitch-cor:-1,yaw-cor:-1,weight:10kg,cmd:106},{type:normal,damage:50,offset:[-3.5d,-0.6d,3d],acc-cor:-1,pitch-cor:-1,yaw-cor:-1,weight:10kg,cmd:106},{type:normal,damage:50,offset:[3.5d,-0.6d,3d],acc-cor:-1,pitch-cor:-1,yaw-cor:-1,weight:10kg,cmd:106}]}
