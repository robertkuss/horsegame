
fixture = physics_fixture_create();
physics_fixture_set_circle_shape(fixture, 12);
back = instance_nearest(x,y,obj_horse_back);
physics_joint_revolute_create(id, back, x, y-7, -1, 1, true, 0, 0, 0, 0);