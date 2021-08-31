move_right = rightvar
move_left = leftvar
vsp = vsp+ grv;
var _move =  move_right - move_left

hsp = _move * walksp

attack = irandom_range(1,50)

if global.isax-x > 2000{
	instance_destroy()
}

if hp <= 0{
	var coin = instance_create_layer(x,y,"Instances",obj_drop)
	coin.val=(irandom_range(10,30))
	repeat(10){
		instance_create_layer(x,y,"Instances",obj_kill)
	}
	instance_destroy()
}

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

if(leftvar == false and rightvar==false){
	if(global.isax > x){
		image_xscale = ogscale * -1
	}
	else{
		image_xscale = ogscale
	}

}




