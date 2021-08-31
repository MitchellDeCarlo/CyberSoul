if(global.isax> x+50 and hit == true and val == true){
	val=false
	global.enterval=true
}

if(global.isax > x+1000 and val2 == true){
	global.enterval = false
	val2=false
}
if deathvar==true{
	instance_destroy()
}
if global.exitt == true{
	if global.isax > x and global.isax-x < 500{
		alarm[0]=60
	}
}

