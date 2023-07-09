#> plane:_index.d
#
# @within function plane:**
    #declare tag need-change-weapon #武器変更を実行するフラグが立っていることを示す
    #declare tag need-use-weapon #武器使用フラグが立っていることを示す
    #declare tag use-wep #WEP使用フラグが立っていることを示す
    #declare tag reloading-wep #WEPリロードフラグが立っていることを示す

#> weapon
# @within function plane:weapon/**
    #declare score_holder #target-uuid #ミサイルターゲットのUUID