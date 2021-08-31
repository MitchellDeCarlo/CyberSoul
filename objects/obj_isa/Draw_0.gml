draw_self()
var c = c_white

if keyboard_check(vk_tab){
	draw_text_transformed_color(x-15,y-38,"Souls: " + string(global.coins) ,.5,.5,0,c,c,c,c,1);
	draw_text_transformed_color(x-15,y-48,"Sword: " + string(global.swordlevel) ,.5,.5,0,c,c,c,c,1);
	draw_text_transformed_color(x-15,y-58,"Gun: " + string(global.gunlevel) ,.5,.5,0,c,c,c,c,1);
	draw_text_transformed_color(x-15,y-68,"Ammo: " + string(global.ammo) ,.5,.5,0,c,c,c,c,1);
	draw_text_transformed_color(x-15,y-78,"Health Packs: " + string(global.healthpack) ,.5,.5,0,c,c,c,c,1);
}
else{
	draw_sprite_stretched(spr_hp,spr_hp,x-25,y-45,global.hp/4,1);
 }
