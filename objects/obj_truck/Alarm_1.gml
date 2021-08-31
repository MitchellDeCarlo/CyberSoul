if abs(global.isax - x) < 200{
	audio_play_sound(snd_soulcollect,10,false)
	var drop = instance_create_layer(x,y,"Instances",obj_drop)
	if big == true{
		drop.val = irandom_range(150,200)
	}
	else{
		drop.val = irandom_range(50,150)
	}
}
else{
	isahit = false
}

