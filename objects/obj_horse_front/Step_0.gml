if(keyboard_check(ord("O")) ){
	legsA[0].phy_rotation += 15;
	legsB[0].phy_rotation = legsA[0].phy_rotation+50;
	legsA[1].phy_rotation -= 10;
	legsB[1].phy_rotation = legsA[1].phy_rotation+50;
	
}

if (keyboard_check(ord("P"))){
	legsA[0].phy_rotation -= 10;
	legsB[0].phy_rotation = legsA[0].phy_rotation+50;
	legsA[1].phy_rotation += 15;
	legsB[1].phy_rotation = legsA[1].phy_rotation+50;
}