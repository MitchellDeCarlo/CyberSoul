if (keyboard_check_pressed(vk_enter)){
	switch(room){
		case rm_title:
			room_goto(rm_enemies)
			break;
		case rm_enemies:
			room_goto(rm_tut)
			break;
		case rm_tut:
			room_goto(rm_game)
			break;
		case rm_win:
			game_restart();
			break;
		case rm_lose:
			game_restart();
			break;
		
	}
}
if(room==rm_game){
	if global.gamewin==true{
		room_goto(rm_win);
		}
	else if global.gamewin == false and global.hp <= 0{
		room_goto(rm_lose)
	}
	}