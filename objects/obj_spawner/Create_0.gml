/// @description Insert description here
// You can write your code in this editor

// all of this is just to set possible spawn locations
kidzspawn_x = ds_list_create()
ds_list_add(kidzspawn_x, 3000, 3000, 5275, 7100, 9700, 9500, 13075)

kidzspawn_y = ds_list_create()
ds_list_add(kidzspawn_y, 1690, 730, 250, 1690, 250, 1690, 1445)


//if a greater than a 7 is randomly generated (~3 in 10 chance) the current spawn location is added
for (var i = 0; i < ds_list_size(kidzspawn_x); i++) {
	if (random_range(0, 10) > 7) then instance_create_layer(kidzspawn_x[| i], kidzspawn_y[| i], "Platform", obj_kidz)
}