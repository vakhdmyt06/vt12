function snd_stop(_sound_id){
	audio_stop_sound(_sound_id);
}
function exist_obj(_asset){
	return instance_exists(_asset);
}
function inventory_add(_itemname){
	if(instance_exists(global.inventory_menu)) global.inventory_menu.ranit=false;
	for(i=0; i!=30; i++){
		if(global.items[i].name == "Empty"){
			global.items[i] = _itemname;
			break;
		}
	}
}
function log(_string)
{
    if(global.debug) show_debug_message(object_get_name(id.object_index) + "[" + string(id.x) + "," + string(id.y) + "]: " + string(_string));
}
function spawn()
{
	if(!instance_exists((obj_player))) instance_create_layer(x, y, "Player", obj_player)
	else {
		obj_player.x=x;
		obj_player.y=y;
	}
	global.spawnid=-1;
	instance_destroy();	
}
function event_start(_id){
	obj_events.alarm[0] = 1;
	obj_events.ID_event = _id;	
}