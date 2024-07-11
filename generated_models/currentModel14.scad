// Bed frame
difference() {
    cube([30, 20, 6]);
    translate([1, 1, 5]) cube([28, 18, 7]);
}

// Legs
translate([0, 0, 0]) cube([2, 2, 6]);
translate([28, 0, 0]) cube([2, 2, 6]);
translate([0, 18, 0]) cube([2, 2, 6]);
translate([28, 18, 0]) cube([2, 2, 6]);

// Headboard
translate([-1, 0, 6]) cube([4, 20, 10]);

// Footboard
translate([27, 0, 6]) cube([4, 20, 8]);

// Mattress
translate([0.5, 0.5, 6]) cube([29, 19, 4]);