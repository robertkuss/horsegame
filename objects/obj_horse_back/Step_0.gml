if(keyboard_check(ord("Q")) ){
	legsA[0].phy_rotation += 15;
	legsB[0].phy_rotation = legsA[0].phy_rotation+50;
	legsA[1].phy_rotation -= 15;
	legsB[1].phy_rotation = legsA[1].phy_rotation+50;
	
}

if (keyboard_check(ord("W"))){
	legsA[0].phy_rotation -= 15;
	legsB[0].phy_rotation = legsA[0].phy_rotation+50;
	legsA[1].phy_rotation += 15;
	legsB[1].phy_rotation = legsA[1].phy_rotation+50;
}

/*if(keyboard_check(ord("E"))){
	
}

if(keyboard_check(ord("R"))  && legsA[0].phy_rotation > 0 && legsB[0].phy_rotation > 0){
	
}*/