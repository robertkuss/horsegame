image_index = 1;
obj_horse_front.image_index = 1;
physics_joint_delete(front_joint);
if (!saddle_spawned){
	instance_create_depth(x+15,y-13, 100, obj_horse_saddle);
	saddle_spawned=true;
}