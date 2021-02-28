#> plane-data:f4u-1/f4u1-storage
#
# @within function constructor:addstorage

data modify storage voxel-planes:weapon f4u1 set value {base:{},additional:{}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon f4u1.base.gun set value {data:{name:"12.7mm gun",type:gun,size:12p7mm,max-ammunition:400,current-ammunition:400,max-cooltime:2,current-cooltime:0,max-reload:220,current-reload:0,tracer:"lightblue",damage:38,speed:110,bullets:[{offset:[2930,-560,3600]},{offset:[3120,-530,3600]},{offset:[3300,-500,3600]},{offset:[-2380,-560,3600]},{offset:[-2570,-530,3600]},{offset:[-2750,-500,3600]}]}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon f4u1.base.bomb set value {data:{name:bomb,type:bomb,max-ammunition:2,current-ammunition:2,max-reload:3600,current-reload:0,bombs:[]}}
data modify storage voxel-planes:weapon f4u1.additional set value {500kg:[{weight:1000lb,type:normal,offset:[-400,-1000,2100],damage:2300,acc-cor:-5,pitch-cor:-8,yaw-cor:-4,cmd:122},{weight:1000lb,type:normal,offset:[1200,-1000,2100],damage:2300,acc-cor:-5,pitch-cor:-8,yaw-cor:-4,cmd:122}]}

#デフォルトロケット弾データセット
data modify storage voxel-planes:weapon f4u1.base.rocket set value {data:{name:rocket,type:rocket,max-ammunition:8,current-ammunition:8,max-reload:1200,current-reload:0,rockets:[]}}
data modify storage voxel-planes:weapon f4u1.additional merge value {ag-rocket:[{type:normal,damage:500,offset:[2900,-1000,2800],acc-cor:-1,pitch-cor:-1,yaw-cor:-1,weight:10kg,cmd:66},{type:normal,damage:500,offset:[3300,-910,2800],acc-cor:-1,pitch-cor:-1,yaw-cor:-1,weight:10kg,cmd:66},{type:normal,damage:500,offset:[3700,-820,2800],acc-cor:-1,pitch-cor:-1,yaw-cor:-1,weight:10kg,cmd:66},{type:normal,damage:500,offset:[4100,-730,2800],acc-cor:-1,pitch-cor:-1,yaw-cor:-1,weight:10kg,cmd:66},{type:normal,damage:500,offset:[-2900,-1000,2800],acc-cor:-1,pitch-cor:-1,yaw-cor:-1,weight:10kg,cmd:66},{type:normal,damage:500,offset:[-3300,-910,2800],acc-cor:-1,pitch-cor:-1,yaw-cor:-1,weight:10kg,cmd:66},{type:normal,damage:500,offset:[-3700,-820,2800],acc-cor:-1,pitch-cor:-1,yaw-cor:-1,weight:10kg,cmd:66},{type:normal,damage:500,offset:[-4100,-730,2800],acc-cor:-1,pitch-cor:-1,yaw-cor:-1,weight:10kg,cmd:66}]}
