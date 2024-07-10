// Base of the couch
translate([0, 0, 0])
cube([30, 10, 3]);

// Cushions
translate([1, 1, 3])
cube([10, 8, 2]);
translate([11, 1, 3])
cube([10, 8, 2]);
translate([21, 1, 3])
cube([8, 8, 2]);

// Backrest
translate([0, 9, 3])
cube([30, 1, 10]);

// Legs (small cylinders used as couch legs)
cylinder(h = 2, r = 1, center = true);
translate([28, 0, 1])
cylinder(h = 2, r = 1, center = true);
translate([28, 8, 1])
cylinder(h = 2, r = 1, center = true);
translate([0, 8, 1])
cylinder(h = 2, r = 1, center = true);