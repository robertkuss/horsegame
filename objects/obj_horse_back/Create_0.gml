fixture = physics_fixture_create();
physics_fixture_set_circle_shape(fixture, 12);

//pin the tail on the horse
tail = instance_create_depth(x-40, y-5, 9999, obj_horse_tail);
physics_joint_revolute_create(id, tail, x-40, y-5, -15, 15, false, 0, 0, 0, 0);

//pin the front of the horse on the horse
/*
body_front = instance_create_depth(x+35, y-7, 9999, obj_horse_front);
physics_joint_revolute_create(id, body_front, x, y-7, -1, 1, true, 0, 0, 0, 0);
	legC = instance_create_depth(body_front.x, y+13, 9997, obj_horse_leg);
	//legD = instance_create_depth(x, y+26, 9998, obj_horse_leg);
	//hoofB = instance_create_depth(x, y+8, 9999, obj_horse_hoof);
	physics_joint_revolute_create(body_front, legC, body_front.x+(17*0), y+13, -30, 30, true, 0, 0, 0, 0);
	//physics_joint_revolute_create(legC, legD, body_front.x+(17*0), y, -30, 30, true, 0, 0, 0, 0);
	//physics_joint_revolute_create(legD, hoofB, body_front.x+(17*0), y+8, -30, 30, true, 0, 0, 0, 0);
	*/

//Create front
front = instance_create_depth(x, y, 10, obj_horse_front);
physics_joint_revolute_create(id, front, x, y, -1, 1, false, 0, 0, 0, 0);


//create the legs
for (i = 0; i < 2; i++){
	legA = instance_create_depth((x-35)+(16*i), y+10, 9997, obj_horse_leg);
	legB = instance_create_depth((x-35)+(16*i), y+24, 9998, obj_horse_leg);
	hoofA = instance_create_depth((x-35)+(16*i), y+38, 9999, obj_horse_hoof);
	physics_joint_revolute_create(id, legA, (x-35)+(16*i), y+10, -30, 30, true, 0, 0, 0, 0);
	physics_joint_revolute_create(legA, legB, (x-35)+(16*i), y+24, -30, 30, false, 0, 0, 0, 0);
	physics_joint_revolute_create(legB, hoofA, x+(17*i), y+8, -3, 3, true, 0, 0, 0, 0);

}
physics_fixture_delete(fixture);