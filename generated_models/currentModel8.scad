module couchFrame() {
    difference() {
        // Couch base
        cube([30, 10, 5]);

        // Carve out the bottom part for legs space
        translate([1, 1, -1]) cube([28, 8, 6]);
    }
}

module couchCushions() {
    // Seat cushions
    for (i = [0:2]) {
        translate([i*10, 1, 5]) cube([9, 8, 3]);
    }

    // Back cushions
    for (i = [0:2]) {
        translate([i*10, 7.5, 8]) cube([9, 2.5, 7]);
    }
}

module couchLegs() {
    // Legs of the couch
    for (i = [0:1]) {
        for (j = [0:1]) {
            translate([i*27, j*9, 0]) cylinder(h=4, r=1, $fn=20);
        }
    }
}

// Combine all parts to construct the complete couch
couchFrame();
couchCushions();
couchLegs();