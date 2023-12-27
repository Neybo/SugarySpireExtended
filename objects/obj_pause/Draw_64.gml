if (pause == 1)
{
    draw_sprite_tiled(bg_paused, 0, x++, y++);
    draw_sprite(spr_pause, selected, 0, 0);
    if (global.mallowfollow == 1)
        draw_sprite(spr_pauseconfecti1, 1, 0, 0);
    else
        draw_sprite(spr_pauseconfecti1, 0, 0, 0);
    if (global.chocofollow == 1)
        draw_sprite(spr_pauseconfecti2, 1, 0, 0);
    else
        draw_sprite(spr_pauseconfecti2, 0, 0, 0);
    if (global.crackfollow == 1)
        draw_sprite(spr_pauseconfecti3, 1, 0, 0);
    else
        draw_sprite(spr_pauseconfecti3, 0, 0, 0);
    if (global.wormfollow == 1)
        draw_sprite(spr_pauseconfecti4, 1, 0, 0);
    else
        draw_sprite(spr_pauseconfecti4, 0, 0, 0);
    if (global.candyfollow == 1)
        draw_sprite(spr_pauseconfecti5, 1, 0, 0);
    else
        draw_sprite(spr_pauseconfecti5, 0, 0, 0);
    scr_pal_swap_set(spr_pal, pal, 0);
    draw_sprite((global.panic ? spr_pizzelle_pause_escape : spr_pizzelle_pause), global.panic, 686, 285);
    shader_reset();
    draw_set_font(global.font);
    draw_set_halign(fa_center);
    draw_set_color(c_white);
    if (global.playseconds > 10)
        draw_text(86, 32, string_hash_to_newline(((string(global.playminutes) + ":") + string(global.playseconds))));
    if (global.playseconds < 10)
        draw_text(86, 32, string_hash_to_newline(((string(global.playminutes) + ":0") + string(global.playseconds))));
}
