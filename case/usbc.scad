$fn=30;

module usbc() {
    cube([8.3, 10, 2.6], center=true);
    translate([0,8, 0]) cube([12.7, 10, 7.3], center=true);
    // 4.9, 2.8
}

usbc();