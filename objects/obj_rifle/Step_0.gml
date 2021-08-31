x = global.isax + 3
y = global.isay
image_angle =  point_direction(x,y,mouse_x,mouse_y)
fd = fd-1
if mouse_check_button(mb_left) and fd < 0 and hit == false and global.ammo>0{
	global.ammo-=1
	audio_play_sound(snd_gun,1,false)
	fd=10
	var bul = instance_create_layer(x,y,"Instances",obj_bullet)
	if(image_angle > 90 and image_angle < 270){
		bul.image_yscale = bul.ogscale * -1
	}
	else{
		bul.image_yscale = bul.ogscale
	}
	bul.image_angle = image_angle
	bul.direction = image_angle
	bul.speed=6
}


if(image_angle > 90 and image_angle < 270){
	image_yscale = ogscale *-1 
	global.isaflip = false

}
else{
	image_yscale = ogscale
	global.isaflip = true
}

if(global.sword == true) or global.hammer == true{
	instance_destroy()
}
if place_meeting(x,y,obj_enbuild) or place_meeting(x,y,obj_enter){
	hit = true
}
else{
	hit = false
}
