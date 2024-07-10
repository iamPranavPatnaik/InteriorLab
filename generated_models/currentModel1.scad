module couch() {
    difference() {
        // Couch base
        cube([30, 12, 5]);

        // Legs holes
        translate([1, 1, -1]) cylinder(h = 6, r = 1, $fn = 20);
        translate([28, 1, -1]) cylinder(h = 6, r = 1, $fn = 20);
        translate([1, 10, -1]) cylinder(h = 6, r = 1, $fn = 20);
        translate([28, 10, -1]) cylinder(h = 6, r = 1, $fn = 20);
    }
    
    // Legs
    translate([0, 0, -4]) cylinder(h = 4, r = 1, $fn = 20);
    translate([28, 0, -4]) cylinder(h = 4, r = 1, $fn = 20);
    translate([0, 11, -4]) cylinder(h = 4, r = 1, $fn = 20);
    translate([28, 11, -4]) cylinder(h = 4, r = 1, $fn = 20);

    // Couch back
    translate([-2, 1.5, 5]) cube([4, 9, 12]);

    // Couch arms
    translate([2, -2, 5]) cube([4, 4, 12]);
    translate([24, -2, 5]) cube([4, 4, 12]);

    // Couch cushions
    translate([6, 0, 5]) cube([9, 12, 5]);
    translate([17, 0, 5]) cube([9, 12, 5]);
}

couch();