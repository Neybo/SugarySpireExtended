if (room != scootercutsceneidk && room != devroom && room != palroom && room != rank_room && room != timesuproom && room != realtitlescreen)
{
    font = global.collectfont
    draw_set_font(global.font)
    draw_set_halign(fa_center)
    draw_set_color(c_white)
    scr_pal_swap_set(obj_player.spr_palette, obj_player.paletteselect, 0)
    draw_sprite_ext(tvsprite, image_index, 832, 74 + siny, 1, 1, 0, c_white, alpha)
	if(sprite_index != spr_tvoff)
	{
		draw_sprite_ext(spr_tvpropeller, -1, 832, 74 + siny, 1, 1, 1, c_white, alpha)
	}
    shader_reset()
    draw_sprite_ext(invsprite, image_index, 700, 57  + siny, 1, 1, 0, c_white, alpha)
    draw_sprite_ext(spr_tvcomboshadow, image_index, 832, 74 + siny, 1, 1, 0, c_white, (global.combotime / 60))
    draw_sprite_ext(spr_tvcombo, image_index, 832, 74 + siny, 1, 1, 0, c_white, combofade)
    draw_set_font(global.combofont)
    draw_set_halign(fa_center)
    draw_set_color(c_white)
    draw_text_color(845, 89 + siny, string_hash_to_newline(global.combo < 10 ? "0" + string(global.combo) : global.combo), c_white, c_white, c_white, c_white, combofade)
}
draw_set_font(global.font)
draw_set_halign(fa_center)
draw_set_color(c_white)
draw_text(xi, yi, string_hash_to_newline(message))