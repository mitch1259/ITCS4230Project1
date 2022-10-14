/// @description Insert description here
// You can write your code in this editor

// all of this is just to set possible spawn locations
kidzspawn = ds_list_create()
//ds_list_add(kidzspawn, locatie)
//ds_list_add(kidzspawn, locatie)
//ds_list_add(kidzspawn, locatie)
//ds_list_add(kidzspawn, locatie)
//ds_list_add(kidzspawn, locatie)
//ds_list_add(kidzspawn, locatie)
//ds_list_add(kidzspawn, locatie)
//ds_list_add(kidzspawn, locatie)
//ds_list_add(kidzspawn, locatie)
//ds_list_add(kidzspawn, locatie)
// We need to select spawn points for kidz!!

kidz = ds_list_create()
//if a 7 is randomly generated (1 in 10 chance) the current spawn location is added
for (var i = 0; i < ds_list_size(kidzspawn); i++) {
	if (random_range(0, 10) == 7) then ds_list_add(kidz, kidzspawn[| i])
}

for (var i = 0; i < ds_list_size(kidz); i++) {
	//instance_create_layer
	// create kidz on proper locations - dependent on how locations
	// are implemented for spawning so not done yet
}