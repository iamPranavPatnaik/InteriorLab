// Coffee Table Base
cube([30, 30, 1.5]);

// Coffee Table Legs
translate([2, 2, -5]) cylinder(h = 5, r1 = 1, r2 = 1, $fn = 20);
translate([26, 2, -5]) cylinder(h = 5, r1 = 1, r2 = 1, $fn = 20);
translate([2, 26, -5]) cylinder(h = 5, r1 = 1, r2 = 1, $fn = 20);
translate([26, 26, -5]) cylinder(h = 5, r1 = 1, r2 = 1, $fn = 20);