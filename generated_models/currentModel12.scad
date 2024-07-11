// Couch Base
difference() {
    cube([30, 10, 2]);
    translate([1, 1, 0]) cube([28, 8, 2]);
}

// Couch Cushions
translate([0, 0, 2]) {
    difference() {
        cube([14, 10, 3]);
        translate([1, 1, 0]) cube([12, 8, 3]);
    }
    translate([16, 0, 0]) {
        difference() {
            cube([14, 10, 3]);
            translate([1, 1, 0]) cube([12, 8, 3]);
        }
    }
}

// Couch Arms
translate([-0.5, 1, 2]) cube([1, 8, 6]);
translate([29.5, 1, 2]) cube([1, 8, 6]);

// Couch Back
translate([0, 9, 2]) cube([30, 1, 6]);