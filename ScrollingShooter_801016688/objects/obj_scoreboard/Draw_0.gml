//Any functions/actions that deal with rendering graphics must be used within a 
//Draw event - otherwise, they do nothing. 

//Draws the healthbar on screen
if(instance_exists(obj_player)){
	draw_healthbar(8, 8, 256, 32, obj_player.player_hp, c_black, c_red, c_lime, 0, true, true);
}
//score
draw_text(16, 64, "SCORE: " + string(points));