if(room=rm_win){
	var c = c_red
	draw_text_transformed_color(400,200,"How many seconds it took to beat the game ->" + string(global.timee),1,1,0,c,c,c,c,1);
}
if(room=rm_lose){
	var c = c_red
	draw_text_transformed_color(400,200,"ITS OVER",3,3,0,c,c,c,c,1);
}