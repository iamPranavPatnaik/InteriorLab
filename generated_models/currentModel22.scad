// Couch Base
cube([30, 10, 5]);

// Couch Back
translate([0, 0, 5])
cube([30, 5, 15]);

// Couch Seat Cushions
translate([1, 5, 5])
cube([14, 5, 10]);
translate([15, 5, 5])
cube([14, 5, 10]);

// Couch Arms
translate([-1, 0, 5])
cube([2, 10, 10]);
translate([29, 0, 5])
cube([2, 10, 10]);