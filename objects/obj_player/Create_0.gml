walkspeed = 6;
global.menum=room;
image_speed = walkspeed/7;
collspeed=walkspeed/2;
blockinput=false; blockmoving=false;
var plscale=1;
image_xscale = plscale;
image_yscale = plscale;
image_alpha=0.84;
facing=0;
isdir[4]= 0;

if(global.debug) instance_create_layer(0, 0, "Instances", DebugSwitch);
instance_create_layer(0, 0, "Instances", obj_t_shortcuts);
instance_create_layer(0, 0, "Instances", obj_events);

/*if(os_type==os_android){
	andrbutt_enter = instance_create_depth(0, 0, -100, obj_button_enter);
	andrbutt_back = instance_create_depth(0, 0, -100, obj_button_back);
	andrbutt_left = instance_create_depth(0, 0, -100, obj_button_left);
	andrbutt_right = instance_create_depth(0, 0, -100, obj_button_right);
	andrbutt_up = instance_create_depth(0, 0, -100, obj_button_up);
	andrbutt_down = instance_create_depth(0, 0, -100, obj_button_down);
	if(global.debug) andrbutt_dbg = instance_create_depth(0, 0, -100, obj_button_debug);
	if(global.debug) andrbutt_dbgbound = instance_create_depth(0, 0, -100, obj_button_dbgbound);
	if(global.debug) andrbutt_dbgmode = instance_create_depth(0, 0, -100, obj_button_debugmode);
}*/

function walkup(){
		var function dowalk(){
			y-=walkspeed;
			if(facing==0 or facing==2 or not isdir[facing]) facing=1;
			isdir[1]=true;
		}
		if(place_free(x, y-collspeed)) dowalk();
		//if(facing==3 and place_free(bbox_right+collspeed, y-collspeed)) dowalk();
		//if(facing==4 and place_free(bbox_left-collspeed, y-collspeed)) dowalk();
		//if(facing!=3 and facing !=4 and place_free(x, y-collspeed)) dowalk();
		//else image_speed=0;
}
function walkdown(){
		var function dowalk(){
			y+=walkspeed;
			if(facing==0 or facing==1 or not isdir[facing]) facing=2;
			isdir[2]=true;
		}
		if(place_free(x, y+collspeed)) dowalk();
		//if(facing==3 and place_free(bbox_right+collspeed, y+collspeed)) dowalk();
		//if(facing==4 and place_free(bbox_left-collspeed, y+collspeed)) dowalk();
		//if(facing!=3 and facing !=4 and place_free(x, y+collspeed)) dowalk();
		//else image_speed=0;
}
function walkleft(){
		var function dowalk(){ 
			x-=walkspeed;
			if(facing==0 or facing==4 or not isdir[facing]) facing=3;
			isdir[3]=true;
		}
		if(place_free(x-collspeed, y)) dowalk();
		//if(facing==1 and place_free(x-collspeed, bbox_bottom+collspeed)) dowalk();
		//if(facing==2 and place_free(x-collspeed, bbox_top-collspeed)) dowalk();
		//if(facing!=1 and facing !=2 and place_free(x-collspeed, y)) dowalk();
		//else image_speed=0;
}
function walkright(){
		var function dowalk(){ 
			x+=walkspeed;
			if(facing==0 or facing==3 or not isdir[facing]) facing=4;
			isdir[4]=true;
		}
		if(place_free(x+collspeed, y)) dowalk();
		//if(facing==1 and place_free(x+collspeed, bbox_bottom+collspeed*2)) dowalk();
		//if(facing==2 and place_free(x+collspeed, bbox_top-collspeed*2)) dowalk();
		//if(facing!=1 and facing !=2 and place_free(x+collspeed, y)) dowalk();
		//else image_speed=0;
}
function walkbackup(){
		if(!place_free(x, y-collspeed)){ 
			y+=walkspeed;
			image_speed=0;
		}
}
function walkbackdown(){
		if(!place_free(x, y+collspeed)){ 
			y-=walkspeed;
			image_speed=0;
		}
}
function walkbackleft(){
		if(!place_free(x-collspeed, y)){ 
			x+=walkspeed;
			image_speed=0;
		}
}
function walkbackright(){
		if(!place_free(x+collspeed, y)){ 
			x-=walkspeed;
			image_speed=0;
		}
}

testvar=0;