val = irandom_range(1,3)
val2 = irandom_range(1,5)
var prop = instance_create_layer(x,y,"Instances_3",obj_prop)
if val==1{
	prop.sprite_index = spr_tree
}

if val==2{
	prop.sprite_index = spr_rock
}

if val==3{
	prop.sprite_index = spr_death
}
alarm[0] = 10

if(val2==2){
	instance_create_layer(x+800,y,"Instances_1",obj_terminal)
}
if(val2==3){
	instance_create_layer(x+800,y,"Instances_1",obj_truck)
}
