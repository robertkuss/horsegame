if(keyboard_check(ord("Y"))){
	legsA[0].phy_rotation += 30;
	legsB[0].phy_rotation -= 20;
	
}

if(keyboard_check(ord("U"))){
	legsA[0].phy_rotation -= 30;
	legsB[0].phy_rotation += 20;
	
	//physics_apply_force(hooves[0].x, hooves[0].y, 0, 25);
}

if(keyboard_check(ord("I"))){
	legsA[1].phy_rotation += 30;
	legsB[1].phy_rotation -= 20;
}

if(keyboard_check(ord("O"))){
	legsA[1].phy_rotation -= 30;
	legsB[1].phy_rotation += 20;
	//physics_apply_force(hooves[0].x, hooves[0].y, 0, 25);
}