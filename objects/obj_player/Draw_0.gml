image_angle = direction;

// Effets de flammes moteur
if ( powering ) var _effect = engine_effect_power;
else var _effect = engine_effect_idle;

if (is_undefined(_effect) || !sprite_exists(_effect)) exit;


if ( engine_effect_sub < sprite_get_number(_effect) ) {
	engine_effect_sub += engine_effect_images_speed;
} else {
	engine_effect_sub = 0;
}


draw_sprite_ext(_effect, floor(engine_effect_sub), x, y, 1, 1, image_angle, -1, 1);


// Moteur
draw_sprite_ext(engine_sprite, 0, x, y, 1, 1, image_angle, -1, 1);

// Player
draw_self();
