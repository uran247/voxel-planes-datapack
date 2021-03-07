#> plane-data:ki-49/ki49-storage
#
# @within function constructor:addstorage

data modify storage voxel-planes:weapon ki49 set value {base:{},additional:{}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon ki49.base.bomb set value {data:{name:bomb,type:bomb,max-ammunition:4,current-ammunition:4,max-reload:600,current-reload:0,bombs:[{weight:250kg,type:normal,offset:[-0.5d,0d,4d],damage:1250,acc-cor:-1,pitch-cor:-2,yaw-cor:-2,cmd:77},{weight:250kg,type:normal,offset:[0.5d,0d,4d],damage:1250,acc-cor:-1,pitch-cor:-2,yaw-cor:-2,cmd:77},{weight:250kg,type:normal,offset:[-0.5d,0d,2d],damage:1250,acc-cor:-1,pitch-cor:-2,yaw-cor:-2,cmd:77},{weight:250kg,type:normal,offset:[0.5d,0d,2d],damage:1250,acc-cor:-1,pitch-cor:-2,yaw-cor:-2,cmd:77}]}}
data modify storage voxel-planes:weapon ki49.additional set value {500kg:[{weight:500kg,type:normal,offset:[0d,0d,1d],damage:2500,acc-cor:-2,pitch-cor:-4,yaw-cor:-4,cmd:118},{weight:500kg,type:normal,offset:[0d,0d,4d],damage:2500,acc-cor:-2,pitch-cor:-4,yaw-cor:-4,cmd:118}]}
