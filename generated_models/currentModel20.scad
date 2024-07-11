// Desk base
cube([30, 20, 1]);

// Desk legs - 4 legs positioned in each corner
translate([1, 1, 0])
cylinder(h = 20, r = 1, $fn = 16);

translate([28, 1, 0])
cylinder(h = 20, r = 1, $fn = 16);

translate([1, 18, 0])
cylinder(h = 20, r = 1, $fn = 16);

translate([28, 18, 0])
cylinder(h = 20, r = 1, $fn = 16);

// Desk drawer
translate([2, 10, -5])
cube([6, 8, 5]);