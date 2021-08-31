if global.bossattack == true {
	if global.attack == true{
		hp-= global.swordtier
		repeat(3){
			instance_create_layer(x,y,"Instances",obj_blood)
		}
	}
}
