#> plane-data:plane-data_index.d
#
# @within
#   function plane:weapon/**
#   function plane:plane-info
    #declare tag enemy-plane #後部機銃の攻撃対象にできるエンティティであることを示す

#> public
    #declare tag has-offset #オフセット計算の必要があるエンティティであることを示す
    #declare tag offset-base #アマスタの底面を腕の高さの位置に調整することを示す
    #declare tag has-model #3Dモデルを持ったエンティティであることを示す
    #declare tag need-calc-offset #オフセット再計算の必要があることを示す
    #declare tag plane-seat #プレイヤー着席用エンティティであることを示す
    #declare tag no-particle #コックピット位置表示のパーティクルを出さないことエンティティで有ることを示す
    #declare tag no-move #移動しないエンティティであることを示す
    #declare tag destroyed #機体が破壊されていることを示す
    #declare tag stall #機体が失速していることを示す
    #declare tag plane-root #飛行機の中核エンティティであることを示す
    #declare tag plane-hitbox #飛行機の当たり判定エンティティであることを示す
    #declare tag model-changeable #モデルが飛行機の状態によって変化することを示す
    #declare tag body #胴体の当たり判定であることを示す
    #declare tag engine #エンジンの当たり判定であることを示す
    #declare tag engine-l #左エンジンの当たり判定であることを示す
    #declare tag engine-r #右エンジンの当たり判定であることを示す
    #declare tag aileron #主翼の当たり判定であることを示す
    #declare tag aileron-r #右主翼の当たり判定であることを示す
    #declare tag aileron-l #左主翼の当たり判定であることを示す
    #declare tag elevetor #水平尾翼の当たり判定であることを示す
    #declare tag elevator-r #右水平尾翼の当たり判定であることを示す
    #declare tag elevator-l #左水平尾翼の当たり判定であることを示す
    #declare tag radder #垂直尾翼の当たり判定であることを示す
    #declare tag cockpit #コックピットの当たり判定であることを示す
    #declare tag plane #飛行機構成エンティティであることを示す
    #declare tag plane-bomb #爆弾であることを示す
    #declare tag plane-rocket #ロケット弾であることを示す
    #declare tag has-torpedo #魚雷を持っていることを示す
    #declare tag has-rocket #ロケット弾を持っていることを示す
    #declare tag 7p7mm #7.7mm機銃を装備していることを示す
    #declare tag 12p7mm #12.7mm機銃を装備していることを示す
    #declare tag 10kg #10kg爆弾を装備していることを示す
    #declare tag 50kg #50kg爆弾を装備していることを示す
    #declare tag 60kg #60kg爆弾を装備していることを示す
    #declare tag 100kg #100kg爆弾を装備していることを示す
    #declare tag 250kg #250kg爆弾を装備していることを示す
    #declare tag 500kg #500kg爆弾を装備していることを示す
    #declare tag 800kg #800kg爆弾を装備していることを示す
    #declare tag 1000lb #100lb爆弾を装備していることを示す
    #declare tag mg151 #mg151を装備していることを示す
    #declare tag bomb-normal #通常爆弾であることを示す
    #declare tag normal #通常爆弾であることを示す
    #declare tag bomber #爆撃機であることを示す
