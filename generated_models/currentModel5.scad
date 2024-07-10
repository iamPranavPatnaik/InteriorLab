// Couch base
cube([30, 10, 2]);

// Couch backrest
translate([0, -2, 2])
cube([30, 4, 10]);

// Couch armrest left
translate([-2, 0, 2])
cube([4, 10, 10]);

// Couch armrest right
translate([28, 0, 2])
cube([4, 10, 10]);

// Couch cushions
translate([2, 1, 2])
cube([13, 8, 6]);
translate([15, 1, 2])
cube([13, 8, 6]);