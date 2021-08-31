x = global.isax
y = global.isay - 24
if(mouse_check_button_pressed(mb_left) and global.attack=false and not place_meeting(x,y,obj_enbuild)) and not place_meeting(x,y,obj_enter){
	audio_play_sound(snd_swipe,2,false)
	global.attack = true
	image_angle=0
	
	
}

if(global.isaflip==false){
	image_yscale = ogscale *-1
}
else{
	image_yscale = ogscale
}
if(global.attack == true){
	image_angle-=5
	if(image_angle==-90){
		global.attack=false
	}
}

if(global.gun==true) or global.hammer == true{
	instance_destroy()
}

if place_meeting(x,y,obj_enbuild){
	global.bossattack = false
}
else{
	global.bossattack = true
}
show_debug_message(global.bossattack)