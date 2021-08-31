val = 2
xval = x
yval = y
i=0
ok = false
spawn = false
if(val == 2){
	repeat(irandom_range(10,25)){
		instance_create_layer(xval,yval,"Instances",obj_enbuild)
		yval-=24
	}
	repeat(irandom_range(10,25)){
		i+=1
		if(i==7){
			spawn = true
			sx = xval
			sy = yval+100
			repeat(irandom_range(1,3)){
				var g =instance_create_layer(xval,yval+100,"Instances",obj_guard)
				g.guard = true
			}
		}
		xval+=24
		instance_create_layer(xval,yval,"Instances",obj_enbuild)
		yval2 = yval
		while true{
			yval2+=24
			instance_create_layer(xval,yval2,"Instances_2",obj_enback)
			if(yval2 >= 2000){
				break;
			}
		}
	}
	xval+=24
	while true{
		instance_create_layer(xval,yval,"Instances",obj_enbuild)
		yval+=24
		if(yval >= 2000){
			break;
		}
	}
}


