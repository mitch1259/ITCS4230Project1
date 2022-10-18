/// @description Insert description here
// You can write your code in this editor

// all of this is just to set possible spawn locations
kidzspawn_x = ds_list_create()
ds_list_add(kidzspawn_x, 375, 787, 750, 1212, 1527, 1818, 2000)

kidzspawn_y = ds_list_create()
ds_list_add(kidzspawn_y, 75, 75, 234, 234, 42, 136, 266)


//if a greater than a 7 is randomly generated (~3 in 10 chance) the current spawn location is added
for (var i = 0; i < ds_list_size(kidzspawn_x); i++) {
	if (random_range(0, 10) > 7) then instance_create_layer(kidzspawn_x[| i], kidzspawn_y[| i], "Instances_1", obj_kidz)
}