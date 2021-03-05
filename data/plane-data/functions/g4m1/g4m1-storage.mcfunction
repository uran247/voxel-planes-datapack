#> plane-data:g4m1/g4m1-storage
#
# @within function constructor:addstorage

data modify storage voxel-planes:weapon g4m1 set value {base:{},additional:{}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon g4m1.base.bomb set value {data:{name:bomb,type:bomb,max-ammunition:4,current-ammunition:4,max-reload:600,current-reload:0,bombs:[{weight:250kg,type:normal,offset:[-0.5d,0d,4d],damage:1250,acc-cor:-1,pitch-cor:-2,yaw-cor:-2,cmd:77},{weight:250kg,type:normal,offset:[0.5d,0d,4d],damage:1250,acc-cor:-1,pitch-cor:-2,yaw-cor:-2,cmd:77},{weight:250kg,type:normal,offset:[-0.5d,0d,2d],damage:1250,acc-cor:-1,pitch-cor:-2,yaw-cor:-2,cmd:77},{weight:250kg,type:normal,offset:[0.5d,0d,2d],damage:1250,acc-cor:-1,pitch-cor:-2,yaw-cor:-2,cmd:77}]}}
data modify storage voxel-planes:weapon g4m1.additional set value {800kg:[{weight:800kg,type:normal,offset:[0d,0d,3d],damage:4000,acc-cor:-3,pitch-cor:-3,yaw-cor:-3,cmd:118}]}
