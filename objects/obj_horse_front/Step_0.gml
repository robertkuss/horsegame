if(keyboard_check(ord("U")) && legsA[0].phy_rotation < 160 && legsB[0].phy_rotation < 120){
	legsA[0].phy_rotation += 15;
	legsB[0].phy_rotation += 10;
}

if (keyboard_check(ord("I")) && legsA[0].phy_rotation > 0 && legsB[0].phy_rotation > 0){
	legsA[0].phy_rotation = 0;
	legsB[0].phy_rotation = 0;
	phy_rotation = 0; // Reset rotation
    phy_linear_velocity_x = 0;
    phy_linear_velocity_y = 0;
    phy_angular_velocity = 0;
}

if(keyboard_check(ord("O"))  && legsA[0].phy_rotation < 160 && legsB[0].phy_rotation < 120){
	legsA[1].phy_rotation += 15;
	legsB[1].phy_rotation += 10;
}

if(keyboard_check(ord("P"))  && legsA[0].phy_rotation > 0 && legsB[0].phy_rotation > 0){
	legsA[1].phy_rotation = 0;
	legsB[1].phy_rotation = 0;
	legsB[1].phy_rotation = 0; // Reset rotation
    phy_linear_velocity_x = 0;
    phy_linear_velocity_y = 0;
    phy_angular_velocity = 0;
}