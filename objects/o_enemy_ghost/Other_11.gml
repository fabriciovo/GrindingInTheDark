/// @description Chase State
if instance_exists(o_player){

dis_ = point_distance(x,y,o_player.x,o_player.y);
if(dis_ > 5){
	move_towards_point(o_player.x, o_player.y,.9);
}
if place_meeting(x,y,o_player) {
	state_ = ghostmonster.attack;
}

}