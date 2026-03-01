if(keyboard_check(ord("Q")) && legsA[0].phy_rotation < 160 && legsB[0].phy_rotation < 120){
	legsA[0].phy_rotation += 15;
	legsB[0].phy_rotation += 10;
}

if (keyboard_check(ord("W")) && legsA[0].phy_rotation > 0 && legsB[0].phy_rotation > 0){
	legsA[0].phy_rotation -= 20;
	legsB[0].phy_rotation -= 15;
}

if(keyboard_check(ord("E"))  && legsA[0].phy_rotation < 160 && legsB[0].phy_rotation < 120){
	legsA[1].phy_rotation += 15;
	legsB[1].phy_rotation += 10;
}

if(keyboard_check(ord("R"))  && legsA[0].phy_rotation > 0 && legsB[0].phy_rotation > 0){
	legsA[1].phy_rotation -= 20;
	legsB[1].phy_rotation -= 15;
	legsB[1].phy_rotation = 0; // Reset rotation
    legsB[1].phy_linear_velocity_x = 0;
    legsB[1].phy_linear_velocity_y = 0;
    legsB[1].phy_angular_velocity = 0;
}