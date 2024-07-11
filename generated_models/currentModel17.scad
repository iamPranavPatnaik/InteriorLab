// Frame of the bed
cube([30, 20, 2]);

// Legs of the bed (4 legs)
translate([1, 1, 0])
cylinder(h = 4, r = 1, center = false);
translate([28, 1, 0])
cylinder(h = 4, r = 1, center = false);
translate([1, 18, 0])
cylinder(h = 4, r = 1, center = false);
translate([28, 18, 0])
cylinder(h = 4, r = 1, center = false);

// Headboard
translate([0, 17, 2])
cube([2, 3, 10]);
translate([28, 17, 2])
cube([2, 3, 10]);