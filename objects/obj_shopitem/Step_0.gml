if death == true{
	death = false
	instance_destroy()
}

if place_meeting(x,y,obj_mouse){
	if mouse_check_button_pressed(mb_left){
		if global.coins >= cost{
			global.coins-=cost
			audio_play_sound(snd_buy,7,false)
			if item == 1 {
				global.swordlevel = tier
			}
			if item == 2 {
				global.gunlevel = tier
			}
			if global.ammo < 150{
				if item == 3{
					global.ammo += 10
			}	
			}
			if global.healthpack < 8{
				if item == 4{
				global.healthpack += 1
			}	
			}
		}
	}
}

if place_meeting(x,y,obj_mouse){
	image_xscale = ogscale*1.2
	image_yscale = ogyscale*1.2
}
else{
	image_xscale = ogscale
	image_yscale = ogyscale
}