/// @description Game Room Created
//collects layer for wall collisions
//randomizes random number generator each game launch
randomize();
layerID = layer_get_id("tiles_collision");
tiles = layer_tilemap_get_id(layerID);
//hides cursor
window_set_cursor(cr_none);
