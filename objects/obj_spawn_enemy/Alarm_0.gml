randomize()
val = irandom_range(1,val)
if(val==3){
	var enem =instance_create_layer(global.isax+irandom_range(600,900),0,"Instances",obj_guard)
}

if val==1 or val==2{
	var enem =instance_create_layer(global.isax+irandom_range(600,900),0,"Instances",obj_zombie)
}

alarm[0] =500
if bossspawn==false{
	if global.coins >= 5000{
		instance_create_layer(global.isax+100,global.isax-100,"Instances_4",obj_ship)
		bossspawn = true
	}
	
}