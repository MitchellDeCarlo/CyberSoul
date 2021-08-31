if keyboard_check(ord("1")) and global.sword==false and not keyboard_check(ord("2")){
	global.sword = true
	global.gun = false
	global.hammer = false
	instance_create_layer(x,y,"Instances_1",obj_sword)
}
if keyboard_check(ord("2"))and global.gun==false{
	global.sword = false
	global.gun = true
	global.hammer = false
	instance_create_layer(x,y,"Instances_1",obj_rifle)
}
if mouse_check_button_pressed(mb_right){
	global.gun = false
	global.sword = false
	global.hammer = true
}

if mouse_check_button_pressed(mb_right) and global.sword == false and global.gun == false and not keyboard_check(ord("1")) and not keyboard_check(ord("1")) and global.hammer == true {
	global.sword = false
	global.gun = false
	global.hammer = true
	instance_create_layer(x,y,"Instances_1",obj_hammer)
}

if keyboard_check_pressed(ord("3")) and global.hp > 0 and global.healthpack > 0{
	if global.hp < 300{
		audio_play_sound(snd_powerup,9,false)
		global.hp+=75
		global.healthpack-=1
	}
	
}
