$fn=30;

module choc() {
    translate([0,0,2.9]) cube([10, 5, 5.8], center=true);
    translate([0,0,0.4]){
        cube([13.8, 13.8, 5.0], center=true);
        cube([15.0, 15.0, 0.8], center=true);
        translate([0,0,-4.85]) cylinder(d=3.2, h=4.85);

        translate([5.5,0,-4.85]) cylinder(d=1.8, h=4.85);
        translate([-5.5,0,-4.85]) cylinder(d=1.8, h=4.85);

        translate([-0.6,5.9,-5.2]) cube([1.2,0.2,5.2]);
        translate([-5.5,3.8,-5.2]) cube([1.0,0.4,5.2]);
    }
}

choc();