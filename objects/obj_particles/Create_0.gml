partSys = part_system_create();

//Exhaust
partTypeExhaustC = part_type_create();
part_type_sprite(partTypeExhaustC, spr_exhaust_c, false, false, false);
part_type_size(partTypeExhaustC, .4, .4, 0.05, 0) 
part_type_color3(partTypeExhaustC, c_white, c_fuchsia, c_purple);
part_type_alpha3(partTypeExhaustC, 1, 1, 0);
part_type_life(partTypeExhaustC, 20, 20);

partTypeExhaustD = part_type_create();
part_type_sprite(partTypeExhaustD, spr_exhaust_d, false, false, false);
part_type_size(partTypeExhaustD, .4, .4, 0.05, 0) 
part_type_color3(partTypeExhaustD, c_yellow, c_orange, c_red);
part_type_alpha3(partTypeExhaustD, 1, 1, 0);
part_type_life(partTypeExhaustD, 20, 20);

//Debris
partTypeAsteroidDebris = part_type_create();
part_type_sprite(partTypeAsteroidDebris, apr_asteroid_debris, false, false, true);
part_type_life(partTypeAsteroidDebris, 60, 80);
part_type_alpha3(partTypeAsteroidDebris, .7, .7, 0);
part_type_direction(partTypeAsteroidDebris, 0, 359, 0, false);
part_type_orientation(partTypeAsteroidDebris, 0, 359, 1, false, false);
part_type_speed(partTypeAsteroidDebris, 2, 2.4, -0.02,0);

partTypeShipDebrisC = part_type_create();
part_type_sprite(partTypeShipDebrisC, spr_ship_debris_c, false, false, true);
part_type_size(partTypeShipDebrisC, .5, 1, 0, 0);
part_type_life(partTypeShipDebrisC, 60, 80);
part_type_alpha3(partTypeShipDebrisC, .6, .6, 0);
part_type_direction(partTypeShipDebrisC, 0, 359, 0, false);
part_type_orientation(partTypeShipDebrisC, 0, 359, 1, false, false);
part_type_speed(partTypeShipDebrisC, 3, 4, -0.05,0);


//enemy
partTypeShipDebrisD = part_type_create();
part_type_sprite(partTypeShipDebrisD, spr_ship_debris_d, false, false, true);
part_type_size(partTypeShipDebrisD, .5, 1, 0, 0);
part_type_life(partTypeShipDebrisD, 60, 80);
part_type_alpha3(partTypeShipDebrisD, .6, .6, 0);
part_type_direction(partTypeShipDebrisD, 0, 359, 0, false);
part_type_orientation(partTypeShipDebrisD, 0, 359, 1, false, false);
part_type_speed(partTypeShipDebrisD, 3, 4, -0.05,0);
