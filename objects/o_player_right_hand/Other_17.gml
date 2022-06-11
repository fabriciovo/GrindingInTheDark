/// @description Magic Sword
show_item_ = s_noone;
image_speed = .8;

if animation_hit_frame(1) {
	var _angle = direction_facing_*90;
	if _angle == 0 and show_type_ == "sword"{
		_angle = 180;
	}
	var _life = 3;
	var _damage = 2;
	var _knockback = 6;
	var _hitbox = create_hitbox(s_sword_hitbox, x, y, _angle, _life, [o_enemy, o_item_destructible], _damage, _knockback);
	audio_play_sound(a_swipe, 7,false);
	switch direction_facing_ {
		case dir.up: _hitbox.y -= 4; break;
		default: _hitbox.y -= 8; break;
	}
}
if direction_facing_ == dirrighthand.right {
x = lerp(x,o_player.x+11,.2);
y = lerp(y,o_player.y-4,.2);
}
if direction_facing_ == dirrighthand.left {
x = lerp(x,o_player.x+11,.2);
y = lerp(y,o_player.y-4,.2);
}
if direction_facing_ == dirrighthand.up {
x = lerp(x,o_player.x+11,.2);
y = lerp(y,o_player.y-8,.2);
}
if direction_facing_ == dirrighthand.down {
x = lerp(x,o_player.x+8,.2);
y = lerp(y,o_player.y+4,.2);
}
if animation_hit_frame(image_number - 1) {
	state_ = playerrighthand.move;
}
