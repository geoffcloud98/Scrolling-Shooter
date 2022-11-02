//set the direction of the bullet
vspeed = 8;
if(instance_exists(obj_player)) {
	direction = point_direction(x, y, obj_player.x, obj_player.y);
} else {
		direction = 270;
}

//clamp direction to be between 240 and 300
direction = clamp(direction, 240, 300);