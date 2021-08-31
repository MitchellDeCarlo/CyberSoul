key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check(vk_space);
global.isax = x
global.isay = y

var _move = key_right - key_left;

if key_left or key_right{
	sprite_index = spr_isa_running
}
else{
	sprite_index = spr_isa_standing
}

hsp = _move * walksp;

if(key_left and global.sword == true){
	global.isaflip=false
}
if(key_right and global.sword == true){
	global.isaflip=true
}


vsp = vsp+ grv;
if global.hp <= 0 {
	instance_destroy()
}

if(place_meeting(x,y+1,obj_floor)) && (key_jump){
	vsp = -jumpsp
}

if(place_meeting(x,y+1,obj_enbuild)) && (key_jump){
	vsp = -jumpsp
}

if(place_meeting(x+hsp,y,obj_floor)){
	while(!place_meeting(x+sign(hsp),y,obj_floor)){
		x = x + sign(hsp);
	}
	hsp=0;
	vsp= -.3
	if(key_jump){
		vsp = -jumpsp	
	}
}

if(place_meeting(x+hsp,y,obj_enter) and global.enterval==true){
	while(!place_meeting(x+sign(hsp),y,obj_enter)){
		x = x + sign(hsp);
	}
	hsp=0;
	vsp= -.3
	if(key_jump){
		vsp = -jumpsp	
	}
}

if(place_meeting(x+hsp,y,obj_enbuild)){
	while(!place_meeting(x+sign(hsp),y,obj_enbuild)){
		x = x + sign(hsp);
	}
	hsp=0;
	vsp= -.3
	if(key_jump){
		vsp = -jumpsp	
	}
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

if(global.isaflip == false){
	image_xscale = ogscale * -1
	
}
else {
	image_xscale = ogscale
}

