draw_set_font(font_default);
draw_self();
draw_set_colour(c_black);

if (obj_horse_back.dead){
	draw_text(x, y+10, "Press G to restart");
}