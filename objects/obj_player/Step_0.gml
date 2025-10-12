// Capture des inputs
input_left = keyboard_check(vk_left) or keyboard_check(ord("Q"));
input_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
input_up = keyboard_check(vk_up) or keyboard_check(ord("Z"));
input_down = keyboard_check(vk_down) or keyboard_check(ord("S"));

// Calcul des 4 directions
horizontal_input = input_right - input_left;
vertical_input = input_down - input_up;

// Orientation du joueur par rapport à la souris
direction = point_direction(x, y, mouse_x, mouse_y);

// Direction de mouvement par rapport aux inputs
move_direction = point_direction(0, 0, horizontal_input, vertical_input);

// Calcul des quantités de mouvement
if ( horizontal_input != 0 ) {
	move_x = lengthdir_x(current_speed, move_direction);
} else {
	move_x = 0;
}
if ( vertical_input != 0 ) {
	move_y = lengthdir_y(current_speed, move_direction);
} else {
	move_y = 0;
}

// Application des mouvements sur l'objet
x += move_x;
y += move_y;


var _margin = sprite_get_width(sprite_index) / 2;
// Limite horizontale = Game Over
if ( x < -_margin ) or ( x > room_width + _margin ) {
	game_restart();
}

// Limite verticale = Wrap
move_wrap(false, true, _margin);


