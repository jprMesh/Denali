$fa = 1;
$fs = 0.1;

// Constants
key_spacing_w = 18;
key_spacing_h = 17;
key_hole_w = 14;
key_hole_h = 14;
plate_thickness = 1.2;

// Globals
kb_height = 7;
corner_radius = 1.2;
edge_thickness = 3;
margin = 5;
top_center_fudge = 10;
bottom_center_fudge = 7;
outer_fudge = 0;
hinge_segs = 4;

// Customization
num_columns = 6;
num_rows = 5;
ledge_mount = true;

// Helpful shortcuts
kb_w = outer_fudge + key_spacing_w*num_columns + 2*margin + top_center_fudge;
kb_wb = outer_fudge + key_spacing_w*(num_columns+1) + 2*margin + bottom_center_fudge;
kb_h = key_spacing_h*num_rows + 2*margin;
kb_mid_angle = atan2((kb_wb-kb_w+0.4),kb_h);

// Imports
use <choc_switch.scad>;
use <usbc.scad>;

//=== Key modules ================================================================ 
module key_hole(row, col) {
    cube([key_hole_w, key_hole_h, 10]);
    translate([-1, 0, -10+kb_height-plate_thickness]) cube([key_hole_w+2, key_hole_h, 10]);
}

module key_grid(rows, cols) {
    for(row = [0 : rows-1]) {
        for(col = [0 : cols-1]) {
            translate([col*key_spacing_w, row*key_spacing_h, 0])
            children();
        }
    }
    translate([cols*key_spacing_w, 0, 0]) children();
}

module key_holes() {
    x_offset = margin + (key_spacing_w - key_hole_w) / 2 + outer_fudge;
    y_offset = margin + (key_spacing_h - key_hole_h) / 2;
    translate([x_offset, y_offset, 0])
        key_grid(rows=num_rows, cols=num_columns) key_hole();
}

module keys(rows, cols) {
    x_offset = margin + (key_spacing_w - key_hole_w) / 2 + key_hole_w/2 + outer_fudge;
    y_offset = margin + (key_spacing_h - key_hole_h) / 2 + key_hole_h/2;
    translate([x_offset, y_offset, kb_height]) {
        key_grid(rows=num_rows, cols=num_columns) choc();
    }
}

//=== Plate modules =============================================================
module corner(x, y) {
    translate([x, y, 0]) {
        cylinder(r=corner_radius, h=kb_height - corner_radius);
        // Fillet Edge
        //translate([0, 0, kb_height - corner_radius]) sphere(corner_radius);
        // Bevel Edge
        translate([0, 0, kb_height - corner_radius]) cylinder(r=0.01, h=corner_radius);
    }
}

module plate() {
    plate_thick = ledge_mount ? plate_thickness + 1.1 : plate_thickness;
    difference() {
        hull() {
            corner(corner_radius, corner_radius);
            corner(kb_wb - corner_radius, corner_radius);
            corner(kb_w - corner_radius, kb_h - corner_radius);
            corner(corner_radius, kb_h - corner_radius);
        }
        translate([edge_thickness, edge_thickness, -1])
            linear_extrude(kb_height-plate_thick+1)
                polygon([
                    [0,0],
                    [kb_wb-2*edge_thickness-0.5, 0],
                    [kb_w-2*edge_thickness, kb_h-2*edge_thickness],
                    [0, kb_h-2*edge_thickness]]);
    }
}

module supports(r) {
    translate([outer_fudge+margin+key_spacing_w, margin+key_spacing_h, 0])
        cylinder(r=r, h=kb_height - 0.5);
    translate([outer_fudge+margin+5*key_spacing_w, margin+key_spacing_h, 0])
        cylinder(r=r, h=kb_height - 0.5);
    translate([outer_fudge+margin+key_spacing_w, margin+(num_rows-1)*key_spacing_h, 0])
        cylinder(r=r, h=kb_height - 0.5);
    translate([outer_fudge+margin+5*key_spacing_w, margin+(num_rows-1)*key_spacing_h, 0])
        cylinder(r=r, h=kb_height - 0.5);
}

module usb_hole() {
    translate([kb_w - 14, kb_h, kb_height-5]) {
        hull() {
            rotate([90, 0, 0]) cylinder(r=2, h=10, center=true);
            translate([8,0,0]) rotate([90, 0, 0]) cylinder(r=2, h=10, center=true);
            translate([1,0,-kb_height]) cube([6,10,2], center=true);
            translate([8,0,-kb_height]) cube([4,10,2], center=true);
        };
    };
}

module trrs_hole() {
    translate([6, kb_h, kb_height-5]) {
        hull() {
            rotate([90, 0, 0]) cylinder(r=2, h=10, center=true);
            translate([4,0,0]) rotate([90, 0, 0]) cylinder(r=2, h=10, center=true);
            translate([1,0,-kb_height]) cube([6,10,2], center=true);
            translate([4,0,-kb_height]) cube([4,10,2], center=true);
        };
    };
}

module hinge() {
    one_time_offset = parent_module(2) == "right_hand" ? kb_h/hinge_segs/2 : 0;
    translate([kb_wb+0.2, 0.5, 0])
        rotate([-90, 0, kb_mid_angle])
            difference() {
                translate([0, 0, -1])
                cylinder(r=3, h=kb_h+3);
                
                translate([0,0,1.5]) cylinder(r=0.9, h=kb_h+5);
                for(offset = [0 : hinge_segs+1]) {
                    translate([0, 0, kb_h/hinge_segs*offset + one_time_offset])
                        cube([10, 10, kb_h/hinge_segs/2+0.1], center=true);
                }
                translate([0, 0, kb_h/hinge_segs*2])
                    cube([10, 10, kb_h/hinge_segs/2+0.1], center=true);
            }
}

module hinge_negative_space() {
    one_time_offset = parent_module(2) == "right_hand" ? kb_h/hinge_segs/2 : 0;
    translate([kb_wb+0.2, 0.5, 0])
        rotate([-90, 0, kb_mid_angle]) {
                translate([0,0,-5]) cylinder(r=2, h=kb_h+10);
                for(offset = [0 : hinge_segs+1]) {
                    translate([0, 0, kb_h/hinge_segs*offset + one_time_offset])
                    cylinder(r=3.1, h=kb_h/hinge_segs/2+0.1, center=true);
                }
            }    
}

module hinge_crop() {
    difference() {
        union() {
            translate([0, kb_h-5, -kb_height]) cube([kb_wb+30, 10, kb_height*2]);
            translate([0, -5, -kb_height]) cube([kb_wb+30, 10, kb_height*2]);
        }
        hull() {
            translate([corner_radius, corner_radius, 0])
                cylinder(r=corner_radius, h=kb_height*4, center=true);
            translate([kb_wb - corner_radius, corner_radius, 0])
                cylinder(r=corner_radius, h=kb_height*4, center=true);
            translate([kb_wb - corner_radius+2.3, corner_radius+2.4*tan(kb_mid_angle), 0])
                cylinder(r=corner_radius, h=kb_height*4, center=true);
            translate([kb_wb - corner_radius+2.3+10, corner_radius+(2.3+10)*tan(2*kb_mid_angle), 0])
                cylinder(r=corner_radius, h=kb_height*4, center=true);
            translate([kb_wb - corner_radius+10, kb_h - corner_radius, 0])
                cylinder(r=corner_radius, h=kb_height*4, center=true);
            translate([kb_w - corner_radius, kb_h - corner_radius, 0])
                cylinder(r=corner_radius, h=kb_height*4, center=true);
            translate([corner_radius, kb_h - corner_radius, 0])
                cylinder(r=corner_radius, h=kb_height*4, center=true);
        }
    }
}

module ribbon_hole() {
    translate([kb_wb+0.2, 0.5, -1.9])
        rotate([-90, 0, kb_mid_angle])
        translate([0, 0, kb_h/hinge_segs*2])
            cube([10, 10, kb_h/hinge_segs/2+0.1], center=true);
}

//=== PCB ======================================================================
module pcb() {
    translate([edge_thickness+1, edge_thickness+1, kb_height - plate_thickness - 1.6 - 1])
        linear_extrude(1.6) // 1.6mm thick pcb
            polygon([
                [0,0],
                [kb_wb-2*edge_thickness - 7, 0],
                [kb_wb-2*edge_thickness - 7, 17],
                [kb_w-2*edge_thickness - 3, kb_h-2*edge_thickness - 2],
                [0, kb_h-2*edge_thickness - 2]]);
    echo(kb_wb-2*edge_thickness - 7);
    echo(kb_h-2*edge_thickness - 2);
}

//=== Main =====================================================================
module left_hand() {
    frame_color = parent_module(1) == "right_hand" ? "maroon" : "teal";
    color(frame_color, 0.9) {
        difference() {
            plate();

            key_holes();
            usb_hole();
            //trrs_hole();
            hinge_negative_space();
            ribbon_hole();
        }
        supports(1.5);
        difference() {
            hinge();
            hinge_crop();
        }
    }
    color("gray", 0.5) keys(5,6);
}

module right_hand() {
    //translate([4, 0, 0])
    translate([kb_wb+0.5, 0, 0])
        rotate(2*kb_mid_angle, v=[0,0,1])
        rotate(15, v=[kb_wb-kb_w, kb_h, 0]) // render hinge angle
            translate([kb_wb+0.1, 0, 0])
                mirror([1,0,0])
                    left_hand();
}

module keyboard() {
    left_hand();
    right_hand();
    
    color("green", 0.7) pcb();

    //color("cyan", 0.7) translate([kb_w-4, kb_h/2, 1]) rotate([0, 0, kb_mid_angle/2]) usbc();
}

keyboard();