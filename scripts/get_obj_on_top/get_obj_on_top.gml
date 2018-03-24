///get_obj_on_top(x,y)
var mx = argument0, my = argument1
var low_depth = 1000000
var clicked = noone
with (all){
    if (position_meeting(mx,my,id) and depth < low_depth){
        low_depth = depth
        clicked = id
    }
}
return clicked