//When the player is destroyed, create a playerExplosion object
audio_play_sound(snd_explosion2,1,0);
instance_create_layer(x, y, "Instances", obj_playerExplosion);