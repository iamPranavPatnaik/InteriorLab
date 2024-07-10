// Main body of the couch
difference() {
    cube([30, 10, 6]);
    translate([1, 1, 1]) cube([28, 8, 5.5]);
}

// Couch legs - assuming 4 legs at each corner
for(i = [0, 29]) {
    for(j = [0, 9]) {
        translate([i, j, 0]) cylinder(h = 1, r1 = 0.5, r2 = 0.5, $fn = 16);
    }
}

// Couch backrest
translate([0, 0, 6]) cube([30, 2, 12]);

// Couch armrests
translate([0, 0, 6]) cube([2, 10, 8]);
translate([28, 0, 6]) cube([2, 10, 8]);

// Couch cushions - divided into three sections on the seat
translate([2, 2, 6]) cube([8, 6, 2]);
translate([11, 2, 6]) cube([8, 6, 2]);
translate([20, 2, 6]) cube([8, 6, 2]);