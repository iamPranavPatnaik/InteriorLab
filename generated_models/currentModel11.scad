// Couch base
difference() {
    cube([30, 15, 5]);
    translate([1, 1, -1]) cube([28, 13, 6]);
}

// Couch cushions
translate([1, 1, 5])
cube([28, 13, 3]);

// Couch back
translate([0, 13, 5])
cube([30, 2, 10]);

// Couch arms
translate([0, 0, 5])
cube([2, 15, 10]);
translate([28, 0, 5])
cube([2, 15, 10]);