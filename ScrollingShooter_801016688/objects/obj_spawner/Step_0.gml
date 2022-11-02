
if(canSpawn) {
	canSpawn = false;
	alarm[0] = spawnInterval;
	x = irandom_range(sprite_xoffset, room_width - sprite_xoffset);
	//Clamp x so that it stays within the screen bounds
	x = clamp(x, sprite_width/2, room_width-sprite_width/2);
	instance_create_layer(x, -10, "Instances", objectType);
}


