alarm[0] = 1;
switch(ID_event){
	case 1:
		switch(count_timer){
			case 0:
				obj_player.blockinput = true;
				tilemap_set(ID_tilemap, 6, 11, 10);
				tilemap_set(ID_tilemap, 6, 14, 10);
				tilemap_set(ID_tilemap, 6, 11, 11);
				tilemap_set(ID_tilemap, 6, 14, 11);
				tilemap_set(ID_tilemap, 6, 11, 12);
				tilemap_set(ID_tilemap, 6, 14, 12);
				break;
			case 6:
				obj_player.walkdown();
				obj_player.walkdown();
				obj_player.walkdown();
				obj_player.walkup();
				tilemap_set(ID_tilemap, 6, 11, 9);
				tilemap_set(ID_tilemap, 6, 14, 9);
				tilemap_set(ID_tilemap, 6, 11, 13);
				tilemap_set(ID_tilemap, 6, 14, 13);
				tilemap_set(ID_tilemap, 6, 10, 10);
				tilemap_set(ID_tilemap, 6, 15, 10);
				tilemap_set(ID_tilemap, 6, 10, 11);
				tilemap_set(ID_tilemap, 6, 15, 11);
				tilemap_set(ID_tilemap, 6, 10, 12);
				tilemap_set(ID_tilemap, 6, 15, 12);
				break;
			case 12:
				tilemap_set(ID_tilemap, 6, 11, 8);
				tilemap_set(ID_tilemap, 6, 14, 8);
				tilemap_set(ID_tilemap, 6, 11, 14);
				tilemap_set(ID_tilemap, 6, 14, 14);
				tilemap_set(ID_tilemap, 6, 10, 9);
				tilemap_set(ID_tilemap, 6, 15, 9);
				tilemap_set(ID_tilemap, 6, 10, 13);
				tilemap_set(ID_tilemap, 6, 15, 13);
				tilemap_set(ID_tilemap, 6, 9, 10);
				tilemap_set(ID_tilemap, 6, 16, 10);
				tilemap_set(ID_tilemap, 6, 9, 11);
				tilemap_set(ID_tilemap, 6, 16, 11);
				tilemap_set(ID_tilemap, 6, 9, 12);
				tilemap_set(ID_tilemap, 6, 16, 12);
				break;
			case 18:
				tilemap_set(ID_tilemap, 6, 11, 7);
				tilemap_set(ID_tilemap, 6, 14, 7);
				tilemap_set(ID_tilemap, 6, 11, 15);
				tilemap_set(ID_tilemap, 6, 14, 15);
				tilemap_set(ID_tilemap, 6, 10, 8);
				tilemap_set(ID_tilemap, 6, 15, 8);
				tilemap_set(ID_tilemap, 6, 10, 14);
				tilemap_set(ID_tilemap, 6, 15, 14);
				tilemap_set(ID_tilemap, 6, 9, 9);
				tilemap_set(ID_tilemap, 6, 16, 9);
				tilemap_set(ID_tilemap, 6, 9, 13);
				tilemap_set(ID_tilemap, 6, 16, 13);
				break
			case 24:
				tilemap_set(ID_tilemap, 6, 10, 7);
				tilemap_set(ID_tilemap, 6, 15, 7);
				tilemap_set(ID_tilemap, 6, 9, 8);
				tilemap_set(ID_tilemap, 6, 16, 8);
				tilemap_set(ID_tilemap, 6, 8, 9);
				tilemap_set(ID_tilemap, 6, 17, 9);
				tilemap_set(ID_tilemap, 6, 8, 10);
				tilemap_set(ID_tilemap, 6, 17, 10);
				tilemap_set(ID_tilemap, 6, 8, 11);
				tilemap_set(ID_tilemap, 6, 17, 11);
				tilemap_set(ID_tilemap, 6, 8, 12);
				tilemap_set(ID_tilemap, 6, 17, 12);
				tilemap_set(ID_tilemap, 6, 8, 13);
				tilemap_set(ID_tilemap, 6, 17, 13);
				tilemap_set(ID_tilemap, 6, 10, 15);
				tilemap_set(ID_tilemap, 6, 15, 15);
				tilemap_set(ID_tilemap, 6, 9, 14);
				tilemap_set(ID_tilemap, 6, 16, 14);
				break;
			case 30:
				tilemap_set(ID_tilemap, 6, 11, 6);
				tilemap_set(ID_tilemap, 6, 14, 6);
				tilemap_set(ID_tilemap, 6, 11, 16);
				tilemap_set(ID_tilemap, 6, 14, 16);
				tilemap_set(ID_tilemap, 6, 9, 7);
				tilemap_set(ID_tilemap, 6, 16, 7);
				tilemap_set(ID_tilemap, 6, 8, 8);
				tilemap_set(ID_tilemap, 6, 17, 8);
				tilemap_set(ID_tilemap, 6, 7, 9);
				tilemap_set(ID_tilemap, 6, 18, 9);
				tilemap_set(ID_tilemap, 6, 7, 10);
				tilemap_set(ID_tilemap, 6, 18, 10);
				tilemap_set(ID_tilemap, 6, 7, 11);
				tilemap_set(ID_tilemap, 6, 18, 11);
				tilemap_set(ID_tilemap, 6, 7, 12);
				tilemap_set(ID_tilemap, 6, 18, 12);
				tilemap_set(ID_tilemap, 6, 7, 13);
				tilemap_set(ID_tilemap, 6, 18, 13);
				tilemap_set(ID_tilemap, 6, 9, 15);
				tilemap_set(ID_tilemap, 6, 16, 15);
				tilemap_set(ID_tilemap, 6, 8, 14);
				tilemap_set(ID_tilemap, 6, 17, 14);
				obj_player.blockinput = false;
				alarm[0] = -1;
				break;
		}
		break;
}
count_timer++;