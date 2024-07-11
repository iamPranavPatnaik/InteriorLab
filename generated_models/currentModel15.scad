// Table Base
cylinder(h = 3, r = 15, center = true);

// Table Legs
for (i = [0 : 90 : 270]) {
    translate([15 * cos(i), 15 * sin(i), -15])
    cylinder(h = 30, r1 = 1, r2 = 1, center = false);
}