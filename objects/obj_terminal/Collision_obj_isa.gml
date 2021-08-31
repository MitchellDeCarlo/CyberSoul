if keyboard_check_pressed(ord("E")){
	if spawn == false{
		var sword = instance_create_layer(x,y-50,"Instances",obj_shopitem)
		var gun = instance_create_layer(x+40,y-50,"Instances",obj_shopitem)
		var ammo = instance_create_layer(x-40,y-50,"Instances",obj_shopitem)
		var health1 = instance_create_layer(x,y-90,"Instances",obj_shopitem)
		ammo.cost = 50
		health1.cost = 50
		sword.cost = cost
		sword.item = 1
		sword.wep =true
		gun.wep = true
		gun.cost = gcost
		gun.item=2
		sword.tier = tier
		gun.tier = gtier
		sword.sprite_index = spr_shopsword
		gun.sprite_index = spr_shopgun
		ammo.sprite_index = spr_shopammo
		ammo.item = 3
		health1.sprite_index = spr_shophealth
		health1.item = 4
		spawn = true
		alarm[0]=500
	}
}

