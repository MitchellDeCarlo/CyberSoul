dir = point_direction(x,y,global.isax,global.isay)
image_angle = dir
i+=1
fd = fd-1

if destory == true{
	instance_destroy()
}
if shootvar==true and fd < 0 and hit == false{
	fd=10
	if abs(global.isax - x) < 350{
		audio_play_sound(snd_gun,2,false)
	}
	var bul = instance_create_layer(x,y+10,"Instances",obj_bullet_enem)
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

if(image_angle <= 90 and image_angle >= 0 or image_angle >= 270 and image_angle <=360){
	image_yscale = ogscale *-1 
	flipvar = true

}
else{
	image_yscale = ogscale
	flipvar = false
}
if(i == val1){
	shootvar = true
	i=0
}
if(shootvar == true){
	j+=1
	if(j== val2){
		j=0
		shootvar = false
	}
}

if place_meeting(x,y,obj_enbuild) or place_meeting(x,y,obj_enter){
	hit = true
}
else{
	hit = false
}