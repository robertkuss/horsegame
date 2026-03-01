hooves = [];
legsA = [];
legsB = [];


/*legA = instance_create_depth((x-3)+(16*0), y+10, 9997, obj_horse_leg);
array_push(legsA,legA);
legB = instance_create_depth((x-3)+(16*0), y+24, 9998, obj_horse_leg_bottom);
array_push(legsB,legB);
physics_joint_revolute_create(id, legA, (x-3)+(16*0), y+10, -20, 20, false, 0, 0, 0, 0);
physics_joint_revolute_create(legA, legB, (x-3)+(16*0), y+24, -20, 20, false, 0, 0, 0, 0);

legA = instance_create_depth((x-3)+(16*1), y+10, 9997, obj_horse_leg_2);
array_push(legsA,legA);
legB = instance_create_depth((x-3)+(16*1), y+24, 9998, obj_horse_leg_bottom_2);
array_push(legsB,legB);
physics_joint_revolute_create(id, legA, (x-3)+(16*1), y+10, -20, 20, false, 0, 0, 0, 0);
physics_joint_revolute_create(legA, legB, (x-3)+(16*1), y+24, -20, 20, false, 0, 0, 0, 0);*/

for (i = 0; i < 2; i++){
    legA = instance_create_depth((x-3)+(16*i), y+10, 9997, obj_horse_leg);
    array_push(legsA, legA);
    legB = instance_create_depth((x-3)+(16*i), y+24, 9998, obj_horse_leg_bottom);
    array_push(legsB, legB);
    //hoof = instance_create_depth((x-3)+(16*i), y+38, 9999, obj_horse_hoof);
    //array_push(hooves, hoof);
    physics_joint_revolute_create(id, legA, (x-3)+(16*i), y+10, -30, 30, false, 0, 0, 0, 0);
    physics_joint_revolute_create(legA, legB, (x-3)+(16*i), y+24, -30, 30, false, 0, 0, 0, 0);
    //physics_joint_revolute_create(legB, hoof, (x-3)+(16*i), y+38, -3, 3, true, 0, 0, 0, 0);
    //physics_fixture_delete(fixture);
}

head = instance_create_depth(x+15, y-15, -1, obj_horse_head);
physics_joint_revolute_create(id, head, x+15, y-15, -20, 20, true, 0, 0, 0, 0);