
fixture = physics_fixture_create();
back = instance_nearest(x,y,obj_horse_back);
xf = back.x;
yf = back.y;
physics_fixture_set_circle_shape(fixture, 12);
for (i = 0; i < 2; i++){
	legA = instance_create_depth(x+(17*i), yf+13, 9997, obj_horse_leg);
	legB = instance_create_depth(x+(17*i), yf+26, 9998, obj_horse_leg);
	hoof = instance_create_depth(x+(17*i), yf+8, 9999, obj_horse_hoof);
	physics_joint_revolute_create(id, legA, x+(17*i), yf+13, -30, 30, true, 0, 0, 0, 0);
	physics_joint_revolute_create(legA, legB, x+(17*i), yf+26, -30, 30, true, 0, 0, 0, 0);
	physics_joint_revolute_create(legB, hoof, x+(17*i), yf+8, -3, 3, true, 0, 0, 0, 0);
	physics_fixture_delete(fixture);
}
head = instance_create_depth(x+7, y-7, -1, obj_horse_head);
physics_joint_revolute_create(id, head, x+7, y-7, -15, 15, true, 0, 0, 0, 0);
