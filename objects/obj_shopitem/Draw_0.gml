draw_self()
var c = c_white
if wep == true{
	draw_text_transformed_color(x,y-15,string(tier) ,.5,.5,0,c,c,c,c,1);
	draw_text_transformed_color(x-5,y+6,string(cost) ,.5,.5,0,c,c,c,c,1);	
}