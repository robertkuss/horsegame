//create the legs
legA = instance_create_depth(x, y+13, 9997, obj_horse_leg_top);
legB = instance_create_depth(x, y+26, 9998, obj_horse_leg_bottom);
//hoof = instance_create_depth(x, y, 9999, obj_horse_hoof);
fixture = physics_fixture_create();
physics_fixture_set_circle_shape(fixture, 12);
physics_joint_revolute_create(id, legA, x, y+13, -30, 30, true, 0, 0, 0, 0);
physics_joint_revolute_create(legA, legB, x, y+26, -30, 30, true, 0, 0, 0, 0);
	
	
	
	//physics_fixture_bind(fixture, legA);
	//physics_joint_weld_create(id, legA, x+25, y+42, 0, 10, 12, true);
	//legB.phy_rotation = legA.phy_rotation;
	//physics_joint_weld_create(legA, legB, x+25, y+42, 0, 10, 12, true);
	//physics_joint_weld_create(legB, hoof, x, y, 0, 10, 12, true);
physics_fixture_delete(fixture);