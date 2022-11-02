//For every frame of the game...

//Logic for player movement (Arrow keys)
if(keyboard_check(vk_up)) vspeed -= 1;
if(keyboard_check(vk_down)) vspeed += 1;
if(keyboard_check(vk_left)) x -= 6;
if(keyboard_check(vk_right)) x += 6;

//This line calculates the vertical acceleration up/down 
vspeed = clamp(vspeed, -7, layer_get_vspeed("Background"));
//Constrain the out of bounds for the player
x = clamp(x, sprite_width/2, room_width-sprite_width/2);
y = clamp(y, sprite_height/2, room_height-sprite_height/2);

//Logic for deceleration after moving up(arrow keys)
if(!(keyboard_check(vk_up)) && !(keyboard_check(vk_down))) {
	vspeed -= sign(vspeed);	
}


//if canShoot is true, if space key is pressed, set the canShoot to false, set an alarm 
//(where canshoot will be set to true again) and creates an obj_bullet instance.
if(canShoot) 
	if (keyboard_check(vk_space)) {
		canShoot = false;
		// room_speed returns the number of game updates that GameMaker will 
		//perform per second. 
		alarm[0] = room_speed / 5;
		instance_create_layer(x, y, "Instances", obj_bullet);
}