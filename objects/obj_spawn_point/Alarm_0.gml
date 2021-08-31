if(global.isax > spawn + 8000){
	val = irandom_range(1,2)
	if(val==2){
		spawn = global.isax + 800
		x = spawn
		instance_create_layer(x,0,"Instances",obj_hit)
		repeat(irandom_range(1,4)){
			x+=(irandom_range(200,300))
			instance_create_layer(x,0,"Instances",obj_hit)
		}
	}

}
alarm[0] = 500
