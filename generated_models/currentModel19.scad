// Define the overall size parameters
couch_length = 30;
couch_depth = 10;
couch_height = 10;
couch_back_height = 15;

// Define the leg dimensions
leg_width = 2;
leg_height = 5;

// Couch frame
translate([0, 0, leg_height])
    cube([couch_length, couch_depth, couch_height]);

// Couch back
translate([0, -1, leg_height + couch_height])
    cube([couch_length, 1, couch_back_height]);

// Legs
for (x = [0, couch_length - leg_width])
    for (y = [0, couch_depth - leg_width])
        cube([leg_width, leg_width, leg_height]);

// Couch seat cushion
translate([0.5, 0.5, leg_height + couch_height - 0.5])
    cube([couch_length - 1, couch_depth - 1, 1]);

// Couch back cushion
translate([0.5, couch_depth, leg_height + couch_height])
    cube([couch_length - 1, 1, couch_back_height - 1]);