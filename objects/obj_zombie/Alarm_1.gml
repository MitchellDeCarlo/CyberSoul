sprite_index = spr_dash
if global.isax < x and rightvar=false{
	leftvar=true
	rightvar = false
	val=irandom_range(15,25)
}
else if global.isax > x and leftvar=false{
	rightvar=true
	leftvar = false
	val=irandom_range(15,25)
}
alarm[0]=val
