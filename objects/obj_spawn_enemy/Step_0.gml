if global.coins > 300{
	val = 8
}


else if global.coins > 1000{
	val = 6
}

else if global.coins > 1500{
	val = 4
}

else{
	val = 10
}

show_debug_message(val)
