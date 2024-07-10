// Couch frame
difference() {
    cube([30, 10, 5]);
    translate([1, 1, 1]) cube([28, 8, 6]);
}

// Couch legs
for (x=[0,25]) {
    for (y=[0,9]) {
        translate([x,y,0]) cylinder(h=2, r=1, $fn=20);
    }
}

// Backrest
translate([0, 0, 5])
    cube([30, 3, 10]);

// Seat cushions
translate([0, 3, 5]) {
    cube([15, 7, 5]);
    translate([15, 0, 0]) cube([12, 7, 5]);
}

// Armrests
translate([0, 10, 5])
    cube([4, 3, 10]);
translate([26, 10, 5])
    cube([4, 3, 10]);