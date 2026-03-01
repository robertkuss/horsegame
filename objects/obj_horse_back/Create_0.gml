//array for the ids of hooves
hooves = [];
legsA = [];
legsB = [];

image_index = 0;
image_speed = 0;

dead = false;

//pin the tail on the horse
tail = instance_create_depth(x-40, y-5, 9999, obj_horse_tail);
physics_joint_revolute_create(id, tail, x-40, y-5, -10, 10, false, 0, 0, 0, 0);


//Create front
front = instance_create_depth(x, y, 10, obj_horse_front);
front_joint = physics_joint_revolute_create(id, front, x, y, -1, 1, false, 0, 0, 0, 0);
saddle_spawned = false;


//create the legs
for (i = 0; i < 2; i++){
    legA = instance_create_depth((x-35)+(16*i), y+10, 9997, obj_horse_leg);
    array_push(legsA,legA);
    legB = instance_create_depth((x-35)+(16*i), y+24, 9998, obj_horse_leg_bottom);
    array_push(legsB,legB);
    physics_joint_revolute_create(id, legA, (x-35)+(16*i), y+10, -20, 20, false, 0, 0, 0, 0);
    physics_joint_revolute_create(legA, legB, (x-35)+(16*i), y+24, -20, 20, false, 0, 0, 0, 0);
}
/*legA = instance_create_depth((x-35)+(16*0), y+10, 9997, obj_horse_leg);
array_push(legsA,legA);
legB = instance_create_depth((x-35)+(16*0), y+24, 9998, obj_horse_leg_bottom);
array_push(legsB,legB);
physics_joint_revolute_create(id, legA, (x-35)+(16*0), y+10, -20, 20, false, 0, 0, 0, 0);
physics_joint_revolute_create(legA, legB, (x-35)+(16*0), y+24, -20, 20, false, 0, 0, 0, 0);

legA = instance_create_depth((x-35)+(16*1), y+10, 9997, obj_horse_leg_2);
array_push(legsA,legA);
legB = instance_create_depth((x-35)+(16*1), y+24, 9998, obj_horse_leg_bottom_2);
array_push(legsB,legB);
physics_joint_revolute_create(id, legA, (x-35)+(16*1), y+10, -20, 20, false, 0, 0, 0, 0);
physics_joint_revolute_create(legA, legB, (x-35)+(16*1), y+24, -20, 20, false, 0, 0, 0, 0);*/