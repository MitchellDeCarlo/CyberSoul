if hit == false and keyboard_check_pressed(ord("E")){
	var drop = instance_create_layer(x,y,"Instances",obj_drop)
	drop.val = irandom_range(5,20)
	instance_destroy()
}
