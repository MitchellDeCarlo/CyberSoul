move_right = rightvar
move_left = leftvar

vsp = vsp+ grv;

var _move =  move_right - move_left

hsp = _move * walksp

if move_right or move_left{
	sprite_index = spr_guard_running
}
else{
	sprite_index = spr_guard
}

if global.isax-x > 2000 and guard==false{
	instance_destroy()
	enem.destory = true
	
}
if hp <= 0{
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
	govar = irandom_range(1,50)
	if(govar==1){
		leftvar = true	
	}
}
else{
	leftvar = false
}

if (global.isax - x > range5 and global.isax - x < range6 or  global.isax - x > range7 and global.isax - x < range8){
	govar2 = irandom_range(1,50)
	
	if(govar2 == 2){
		rightvar = true	
	}
}
else{
	rightvar = false
}



enem.x = x 
enem.y = y - 10

if(place_meeting(x+hsp,y,obj_floor)){
	while(!place_meeting(x+sign(hsp),y,obj_floor)){
		x = x + sign(hsp);
	}
	hsp=0;
	vsp = - irandom_range(3,9)
}

if(place_meeting(x+hsp,y,obj_enbuild)){
	while(!place_meeting(x+sign(hsp),y,obj_enbuild)){
		x = x + sign(hsp);
	}
	hsp=0;
	vsp = - irandom_range(3,9)
}

if(place_meeting(x+hsp,y,obj_enter)){
	while(!place_meeting(x+sign(hsp),y,obj_enter)){
		x = x + sign(hsp);
	}
	hsp=0;
	vsp = - irandom_range(3,9)
}
x = x + hsp

if(place_meeting(x,y+vsp,obj_floor)){
	while(!place_meeting(x,y+sign(vsp),obj_floor)){
		y = y + sign(vsp);
	}
	vsp=0;
}
if(place_meeting(x,y+vsp,obj_enbuild)){
	while(!place_meeting(x,y+sign(vsp),obj_enbuild)){
		y = y + sign(vsp);
	}
	vsp=0;
}
y= y + vsp;

if(enem.flipvar){
	image_xscale = ogscale * -1
}
else{
	image_xscale = ogscale
}


