x_impulse = 0;
y_impulse = 0;

if(keyboard_check(ord("Q"))){
	legsA[0].phy_rotation += 30;
	legsB[0].phy_rotation -= 20;
	legsA[1].phy_rotation += 30;
	legsB[1].phy_rotation -= 20;
	//physics_apply_force(hooves[0].x, hooves[0].y, 0, 100);
}

if(keyboard_check(ord("W"))){
	legsA[0].phy_rotation -= 30;
	legsB[0].phy_rotation += 20;
	legsA[1].phy_rotation -= 30;
	legsB[1].phy_rotation += 20;
	//physics_apply_force(hooves[0].x, hooves[0].y, 0, 100);
}

if(keyboard_check(ord("E"))){

}

if(keyboard_check(ord("R"))){

	//physics_apply_force(hooves[0].x, hooves[0].y, 0, 30);
}