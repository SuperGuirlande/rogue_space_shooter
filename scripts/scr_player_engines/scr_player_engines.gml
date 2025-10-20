
// Récupérer la vitesse de base du moteur 
function get_engine_speed(engine_id){
	var _id = engine_id;
	var _speed = undefined;
	
	switch(_id) {
		case 0 : _speed = 4; break;
		case 1 : _speed = 5; break;
		case 2 : _speed = 6; break;
		case 3 : _speed = 7; break;
	}
	
	return _speed;
}


// Récupérer le sprite du moteur
function get_engine_sprite(engine_id){
	var _id = engine_id;
	var _sprite = undefined;
	
	switch(_id) {
		case 0 : _sprite = spr_base_engine; break;
		case 1 : _sprite = spr_big_pulse_engine; break;
		case 2 : _sprite = spr_burst_engine; break;
		case 3 : _sprite = spr_supercharged_engine; break;
		}
	return _sprite;
}


// Récupérer les prites des flammes du moteur
function get_engine_effects_sprites(engine_id) {
	var _id = engine_id;
	var _idle = undefined;
	var _power = undefined;
	
	switch(_id) {
		case 0 : _idle = spr_base_engine_idle; _power = spr_base_engine_powering; break;
		case 1 : _idle = spr_big_pulse_engine_idle; _power = spr_big_pulse_engine_powering; break;
		case 2 : _idle = spr_burst_engine_idle; _power = spr_burst_engine_powering; break;
		case 3 : _idle = spr_supercharged_engine_idle; _power = spr_supercharged_engine_powering; break;
	}
	
	var _sprites = [ _idle, _power ];
	return _sprites;
}
	


// Setup toutes les variables en rapport au moteur
function setup_player_engine(engine_id) {
	var _id = engine_id;
	
	obj_player.engine_sprite = get_engine_sprite(_id);/// @function get_engine_speed(engine_id)
/// @description Retourne la vitesse de base associée à un moteur donné.
/// @param {real} engine_id  Identifiant du moteur (0 à 3)
/// @return {real} Vitesse de base du moteur
function get_engine_speed(engine_id) {
	var _id = engine_id;
	var _speed = undefined;
	
	switch(_id) {
		case 0: _speed = 4; break; // Moteur de base
		case 1: _speed = 5; break; // Moteur "Big Pulse"
		case 2: _speed = 6; break; // Moteur "Burst"
		case 3: _speed = 7; break; // Moteur "Supercharged"
	}
	
	return _speed;
}


/// @function get_engine_sprite(engine_id)
/// @description Retourne le sprite correspondant au moteur sélectionné.
/// @param {real} engine_id  Identifiant du moteur (0 à 3)
/// @return {sprite} Sprite du moteur
function get_engine_sprite(engine_id) {
	var _id = engine_id;
	var _sprite = undefined;
	
	switch(_id) {
		case 0: _sprite = spr_base_engine; break;
		case 1: _sprite = spr_big_pulse_engine; break;
		case 2: _sprite = spr_burst_engine; break;
		case 3: _sprite = spr_supercharged_engine; break;
	}
	return _sprite;
}


/// @function get_engine_effects_sprites(engine_id)
/// @description Retourne les sprites des effets visuels (flammes) d’un moteur.
/// @param {real} engine_id  Identifiant du moteur (0 à 3)
/// @return {array} Tableau contenant deux sprites : [idle, power]
function get_engine_effects_sprites(engine_id) {
	var _id = engine_id;
	var _idle = undefined;
	var _power = undefined;
	
	switch(_id) {
		case 0: _idle = spr_base_engine_idle; _power = spr_base_engine_powering; break;
		case 1: _idle = spr_big_pulse_engine_idle; _power = spr_big_pulse_engine_powering; break;
		case 2: _idle = spr_burst_engine_idle; _power = spr_burst_engine_powering; break;
		case 3: _idle = spr_supercharged_engine_idle; _power = spr_supercharged_engine_powering; break;
	}
	
	var _sprites = [ _idle, _power ];
	return _sprites;
}


/// @function setup_player_engine(engine_id)
/// @description Initialise toutes les variables moteur du joueur en fonction de l’ID.
/// @param {real} engine_id  Identifiant du moteur (0 à 3)
/// @return {undefined}
function setup_player_engine(engine_id) {
	var _id = engine_id;
	
	// Définit le sprite principal du moteur du joueur
	obj_player.engine_sprite = get_engine_sprite(_id);
	
	// Définit la vitesse de base du moteur
	obj_player.base_speed = get_engine_speed(_id);
	
	// Récupère les sprites d’effets visuels du moteur
	var _effects = get_engine_effects_sprites(_id);
	obj_player.engine_effect_idle = _effects[0];   // Sprite de flamme au repos
	obj_player.engine_effect_power = _effects[1];  // Sprite de flamme en accélération
}

	obj_player.base_speed = get_engine_speed(_id);
	
	var _effects = get_engine_effects_sprites(_id);
	obj_player.engine_effect_idle = _effects[0];
	obj_player.engine_effect_power =  _effects[1];
}
	