// Base of the couch
cube([30, 10, 5]);

// Couch backrest
translate([0, 0, 5]) 
    cube([30, 5, 15]);

// Left armrest
translate([0, 0, 5]) 
    cube([5, 10, 15]);

// Right armrest
translate([25, 0, 5]) 
    cube([5, 10, 15]);

// Left cushion
translate([5, 0.5, 5])
    cube([10, 9, 6]);

// Right cushion
translate([15, 0.5, 5])
    cube([10, 9, 6]);