move_right = rightvar
move_left = leftvar

vsp = vsp+ grv;

var _move =  move_right - move_left

hsp = _move * walksp


x = x+ hsp
if !place_meeting(x,y,obj_floor){
	y = global.isay-100
}
else{
	if x < global.isax{
		x+=10
	}
	else{
		x-=10
	}
}
if global.isax-x > 2000 and guard==false{
	instance_destroy()
	enem.destory = true
	
}
if hp <= 0{
	global.gamewin=true
	var coin = instance_create_layer(x,y,"Instances",obj_drop)
	coin.val=(irandom_range(20,50))
	repeat(10){
		instance_create_layer(x,y,"Instances",obj_kill)
	}
	if global.ammo<150{
		global.ammo+=irandom_range(4,20)	
	}
	enem.destory=true
	instance_destroy()
}


if (global.isax - x < range1 and global.isax - x > range2 or global.isax - x < range3 and global.isax - x > range4){
	govar = irandom_range(1,20)
	if(govar==1){
		leftvar = true	
	}
}
else{
	leftvar = false
}

if (global.isax - x > range5 and global.isax - x < range6 or  global.isax - x > range7 and global.isax - x < range8){
	govar2 = irandom_range(1,20)
	
	if(govar2 == 2){
		rightvar = true	
	}
}
else{
	rightvar = false
}

if abs(x - global.isax) > 500{
	x = global.isax
}


enem.x = x 
enem.y = y + 10


if(enem.flipvar){
	image_xscale = ogscale * -1
}
else{
	image_xscale = ogscale
}
if hp <=0{
	instance_destroy()
}
if rule = false{
	sprite_index = spr_ship_proj
} else{
	sprite_index = spr_ship
}



