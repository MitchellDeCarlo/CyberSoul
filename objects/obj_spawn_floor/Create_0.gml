randomize()
global.timee = 0
alarm[0]=60
audio_play_sound(Untitled_song,7,true)
window_set_fullscreen(true)
var background = layer_background_get_id(layer_get_id("Background"));
layer_background_blend(background, c_maroon)
global.attack = false
xval= 0
yval = 2000
while (xval <= 40000){
	tempval = irandom_range(1,8)
	if(tempval == 1){
		repeat(20){
			repeat(irandom_range(2,3)){
				instance_create_layer(xval,yval,"Instances",obj_floor)
				yval-=(irandom_range(18,19));
	            }
				var block = instance_create_layer(xval,yval,"Instances",obj_floor)
				block.sprite_index= spr_floor2
			yval=2000
			xval+=24
		}
	}
	else if(tempval == 2){
		repeat(20){
			repeat(irandom_range(3,5)){
				instance_create_layer(xval,yval,"Instances",obj_floor)
				yval-=(irandom_range(18,19));
	            }
				var block = instance_create_layer(xval,yval,"Instances",obj_floor)
				block.sprite_index= spr_floor2
			yval=2000
			xval+=24
		}
	}
	else if(tempval == 3){
		repeat(20){
			repeat(irandom_range(6,8)){
				instance_create_layer(xval,yval,"Instances",obj_floor)
				yval-=(irandom_range(18,19));
	            }
				var block = instance_create_layer(xval,yval,"Instances",obj_floor)
				block.sprite_index= spr_floor2
			yval=2000
			xval+=24
		}
	}
	
	else if(tempval == 4){
		repeat(20){
			repeat(irandom_range(9,12)){
				instance_create_layer(xval,yval,"Instances",obj_floor)
				yval-=(irandom_range(18,19));
	            }
				var block = instance_create_layer(xval,yval,"Instances",obj_floor)
				block.sprite_index= spr_floor2
			yval=2000
			xval+=24
		}
	}
	
	else if(tempval == 5){
		repeat(20){
			repeat(irandom_range(12,15)){
				instance_create_layer(xval,yval,"Instances",obj_floor)
				yval-=(irandom_range(18,19));
	            }
				var block = instance_create_layer(xval,yval,"Instances",obj_floor)
				block.sprite_index= spr_floor2
			yval=2000
			xval+=24
		}
	}
	else if(tempval == 6){
		repeat(20){
			repeat(irandom_range(16,19)){
				instance_create_layer(xval,yval,"Instances",obj_floor)
				yval-=(irandom_range(18,19));
	            }
				var block = instance_create_layer(xval,yval,"Instances",obj_floor)
				block.sprite_index= spr_floor2
			yval=2000
			xval+=24
		}
	}
	else if(tempval == 7){
		repeat(20){
			repeat(irandom_range(20,23)){
				var block = instance_create_layer(xval,yval,"Instances",obj_floor)
				block.sprite_index = spr_mtn
				yval-=(irandom_range(18,19));
	            }
			yval=2000
			xval+=24
		}
	}
	
	else if(tempval == 8){
		repeat(20){
			repeat(irandom_range(24,28)){
				var block = instance_create_layer(xval,yval,"Instances",obj_floor)
				block.sprite_index = spr_mtn
				yval-=(irandom_range(18,19));
	            }
			yval=2000
			xval+=24
		}
	}
	
}
