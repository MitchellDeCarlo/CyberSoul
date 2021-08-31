check = irandom_range(1,2)
val=irandom_range(50,100)
if check == 1{
	sprite_index = spr_wait
	alarm[1] = val
}
else{
	leftvar=false
	rightvar=false
	sprite_index = spr_zombie
}
alarm[0]=val
