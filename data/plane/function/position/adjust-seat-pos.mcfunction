#> plane:position/adjust-seat-pos
#
# @input
#   executer @e[tag=plane-root]
#   position @e[tag=plane-root]
#   oh_my_dat @e[tag=plane-root]
#
# @within function plane:position/position-individual

#seatの位置修正
$tp @e[tag=plane-seat,tag=target-parts,distance=..32] ^$(x) ^$(y) ^$(z)
    #$say tp @e[tag=plane-seat,tag=target-parts,distance=..32] ^$(x) ^$(y) ^$(z)