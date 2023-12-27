scr_pal_swap_set(spr_palette, paletteselect, 0);
draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, image_angle, image_blend, image_alpha);
shader_reset();
if flash
{
    shader_set(shd_hit);
    draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, image_angle, image_blend, image_alpha);
    shader_reset();
}
if (flash == 1 && alarm[11] <= 0)
    alarm[11] = 5;
shader_reset();
if (global.debugmode == 1)
{
    font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0);
    draw_set_font(global.font);
    draw_set_halign(fa_center);
    draw_set_color(c_white);
    draw_text(x, (y - 50), state);
    draw_text(x, (y - 100), movespeed);
    draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
    draw_set_halign(fa_left);
}
