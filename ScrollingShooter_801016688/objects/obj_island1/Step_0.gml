//For every frame...

//Reset island posiiton to the top of the map once it reaches the bottom of the map
if (y - sprite_yoffset > room_height) {
	y = 0;	
	x = irandom_range(sprite_xoffset, room_width - sprite_xoffset);
}
