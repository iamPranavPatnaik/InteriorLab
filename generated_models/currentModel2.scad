// Base of the couch
translate([0, 0, 0])
cube([30, 10, 5]);

// Backrest
translate([0, 0, 5])
cube([30, 2, 10]);

// Armrests
translate([0, 0, 5])
cube([2, 10, 10]);
translate([28, 0, 5])
cube([2, 10, 10]);

// Cushions
translate([3, 1, 5])
cube([12, 8, 4]);
translate([16, 1, 5])
cube([12, 8, 4]);