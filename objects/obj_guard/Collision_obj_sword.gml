if global.attack == true{
	audio_play_sound(snd_hit,3,false)
	hp-= global.swordtier
	repeat(3){
		instance_create_layer(x,y,"Instances",obj_blood)
	}
}
