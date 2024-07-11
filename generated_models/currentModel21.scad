// Main body of the couch
difference() {
    cube([30, 10, 5]); // Base of the couch
    translate([1, 1, 1])
    cube([28, 8, 4]); // Hollow out the seating area
}

// Couch legs
for (i = [0,29]) {
    for (j = [0, 9]) {
        if (i == 0 || i == 29 || j == 0 || j == 9) {
            translate([i, j, -2])
            cube([1, 1, 2]); // Legs of the couch
        }
    }
}

// Backrest
translate([0, 9, 5])
cube([30, 2, 10]); // Backrest

// Armrests
translate([0, 0, 5])
cube([2, 10, 5]); // Left armrest

translate([28, 0, 5])
cube([2, 10, 5]); // Right armrest

// Cushions (Symmetrical placement)
for(k = [2, 10, 18, 26]) {
    translate([k, 1, 5])
    cube([6, 8, 3]); // Cushions on the seat
}