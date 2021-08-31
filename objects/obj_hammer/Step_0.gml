x = global.isax + 3
y = global.isay
image_angle =  point_direction(x,y,mouse_x,mouse_y) - 90

if global.sword == true or global.gun == true{
	instance_destroy()
}

if(image_angle+90 > 90 and image_angle+90 < 270){
	global.isaflip = false

}
else{
	global.isaflip = true
}

