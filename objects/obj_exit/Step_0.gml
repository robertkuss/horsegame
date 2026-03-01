if ((place_meeting(x, y, obj_horse_leg_bottom) || place_meeting(x, y, obj_horse_leg) || place_meeting(x, y, obj_horse_back) || place_meeting(x, y, obj_horse_front) || place_meeting(x, y, obj_horse_head)) && obj_horse_back.dead == false){
	room_goto_next();
}