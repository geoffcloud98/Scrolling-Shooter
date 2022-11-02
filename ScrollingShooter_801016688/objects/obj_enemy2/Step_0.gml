///code to have enemy2 shoot bullets


// Inherit the parent event
event_inherited();
if(canShoot) {
	canShoot = false;
    alarm[0] = shotInterval;
	instance_create_layer(x, y, "Instances", shotType);
}