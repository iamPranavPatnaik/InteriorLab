// Frame of the couch
difference() {
    cube([30, 10, 5]);

    // Carving space for cushions
    translate([1, 1, 1])
    cube([28, 8, 3]);
}

// Couch legs
for (x = [0, 26]) {
    for (y = [0, 8]) {
        translate([x, y, 0])
        cylinder(h = 2, r = 1, center = false);
    }
}

// Couch back
translate([0, 0, 5])
cube([30, 3, 10]);

// Couch armrests
for (x = [0, 27]) {
    translate([x, 3, 5])
    cube([3, 4, 10]);
}

// Couch cushions
translate([1, 1, 3])
cube([28, 8, 2]);