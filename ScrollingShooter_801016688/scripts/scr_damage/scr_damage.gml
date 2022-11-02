// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function inflict_damage(damage){
	obj_player.player_hp -= damage;
	if(obj_player.player_hp <= 0) {
		instance_destroy(obj_player);	
	}
	instance_destroy();

}