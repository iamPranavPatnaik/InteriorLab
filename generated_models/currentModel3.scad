// Couch frame
difference() {
    cube([30, 10, 5]);
    translate([1, 1, 0]) cube([28, 8, 4]);
}

// Couch legs
for (i = [0:3])
    translate([i % 2 * 28, i / 2 * 8, -5]) cube([2, 2, 5]);

// Couch backrest
translate([0, 9, 5]) cube([30, 1, 10]);

// Couch cushions
translate([1, 1, 5]) cube([14, 8, 4]);
translate([15, 1, 5]) cube([14, 8, 4]);