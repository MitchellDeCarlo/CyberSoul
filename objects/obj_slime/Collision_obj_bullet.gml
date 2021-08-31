audio_play_sound(snd_swipe,3,false)
hp-=global.guntier
repeat(3){
		instance_create_layer(x,y,"Instances",obj_kill)
	}
audio_play_sound(snd_hit,3,false)