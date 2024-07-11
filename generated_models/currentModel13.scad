// Base of the couch
cube([30, 10, 5]);

// Cushions
translate([1, 1, 5])
cube([13, 8, 3]);
translate([16, 1, 5])
cube([13, 8, 3]);

// Armrests
translate([0, 0, 5])
cube([1, 10, 6]);
translate([29, 0, 5])
cube([1, 10, 6]);

// Backrest
translate([0, 9, 5])
cube([30, 1, 10]);