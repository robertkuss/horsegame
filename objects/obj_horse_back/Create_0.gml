//create the legs
fixture = physics_fixture_create();
physics_fixture_set_circle_shape(fixture, 12);
for (i = 0; i < 2; i++){
	legA = instance_create_depth(x+(17*i), y+13, 9997, obj_horse_leg);
	legB = instance_create_depth(x+(17*i), y+26, 9998, obj_horse_leg);
	hoof = instance_create_depth(x+(17*i), y+8, 9999, obj_horse_hoof);
	physics_joint_revolute_create(id, legA, x+(17*i), y+13, -30, 30, true, 0, 0, 0, 0);
	physics_joint_revolute_create(legA, legB, x+(17*i), y+26, -30, 30, true, 0, 0, 0, 0);
	physics_joint_revolute_create(legB, hoof, x+(17*i), y+8, -3, 3, true, 0, 0, 0, 0);
}

//pin the tail on the horse
tail = instance_create_depth(x-17, y, 9999, obj_horse_tail);
physics_joint_revolute_create(id, tail, x-17, y, -15, 15, true, 0, 0, 0, 0);
//pin the front of horse on the horse
body_front = instance_create_depth(x+35, y-7, 9999, obj_horse_front);
physics_joint_revolute_create(id, body_front, x+35, y-7, -1, 1, true, 0, 0, 0, 0);
physics_fixture_delete(fixture);