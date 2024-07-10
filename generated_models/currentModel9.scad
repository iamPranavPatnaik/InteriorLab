// Couch base
cube([30, 10, 5]);

// Couch backrest
translate([0, -1, 5])
cube([30, 3, 10]);

// Couch armrest left
translate([-1, 0, 5])
cube([3, 10, 10]);

// Couch armrest right
translate([28, 0, 5])
cube([3, 10, 10]);

// Couch cushions
translate([3, .5, 5])
cube([9, 9, 2.5]);
translate([13, .5, 5])
cube([9, 9, 2.5]);
translate([23, .5, 5])
cube([5, 9, 2.5]);