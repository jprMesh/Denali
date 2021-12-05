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
top_center_fudge = 6;
bottom_center_fudge = 3;

// Customization
num_columns = 6;
num_rows = 5;

// Helpful shortcuts
kb_w = key_spacing_w*num_columns + 2*margin + top_center_fudge;
kb_wb = key_spacing_w*(num_columns+1) + 2*margin + bottom_center_fudge;
kb_h = key_spacing_h*num_rows + 2*margin;
kb_mid_angle = atan2((kb_wb-kb_w+0.4),kb_h);

// Imports
use <choc_switch.scad>;
use <usbc.scad>;

//=== Key modules ================================================================ 
module key_hole(row, col) {
    cube([key_hole_w, key_hole_h, 10]);
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
    x_offset = margin + (key_spacing_w - key_hole_w) / 2;
    y_offset = margin + (key_spacing_h - key_hole_h) / 2;
    translate([x_offset, y_offset, 0])
        key_grid(rows=num_rows, cols=num_columns) key_hole();
}

module keys(rows, cols) {
    x_offset = margin + (key_spacing_w - key_hole_w) / 2 + key_hole_w/2;
    y_offset = margin + (key_spacing_h - key_hole_h) / 2 + key_hole_h/2;
    translate([x_offset, y_offset, kb_height]) {
        key_grid(rows=num_rows, cols=num_columns) choc();
    }
}

//=== Plate modules =============================================================
module corner(x, y) {
    translate([x, y, 0]) {
        cylinder(r=corner_radius, h=kb_height - corner_radius);
        translate([0, 0, kb_height - corner_radius]) sphere(corner_radius);
    }
}

module plate() {
    difference() {
        hull() {
            corner(corner_radius, corner_radius);
            corner(kb_wb - corner_radius, corner_radius);
            corner(kb_w - corner_radius, kb_h - corner_radius);
            corner(corner_radius, kb_h - corner_radius);
        }
        translate([edge_thickness, edge_thickness, -1])
            linear_extrude(kb_height-plate_thickness+1)
                polygon([
                    [0,0],
                    [kb_wb-2*edge_thickness-0.5, 0],
                    [kb_w-2*edge_thickness, kb_h-2*edge_thickness],
                    [0, kb_h-2*edge_thickness]]);
    }
}

module supports(r) {
    translate([margin+key_spacing_w, margin+key_spacing_h, 0])
        cylinder(r=r, h=kb_height - 0.5);
    translate([margin+5*key_spacing_w, margin+key_spacing_h, 0])
        cylinder(r=r, h=kb_height - 0.5);
    translate([margin+key_spacing_w, margin+(num_rows-1)*key_spacing_h, 0])
        cylinder(r=r, h=kb_height - 0.5);
    translate([margin+5*key_spacing_w, margin+(num_rows-1)*key_spacing_h, 0])
        cylinder(r=r, h=kb_height - 0.5);
}

module wire_hole() {
    translate([kb_w-6, kb_h, kb_height-4]) {
        hull() {
            translate([0,0,-kb_height]) cube([4,10,2], center=true);
            rotate([90, 0, 0]) cylinder(r=2, h=10, center=true);
        };
    }
}

module hinge() {
    segs = 4;
    one_time_offset = parent_module(2) == "right_hand" ? kb_h/segs/2 : 0;
    translate([kb_wb+0.2, 0.5, 0])
        rotate([-90, 0, kb_mid_angle])
            difference() {
                cylinder(r=3, h=kb_h);
                translate([0,0,-1]) cylinder(r=1, h=kb_h+2);
                for(offset = [0 : segs+1]) {
                    translate([0, 0, kb_h/segs*offset + one_time_offset])
                        cube([10, 10, kb_h/segs/2+0.1], center=true);
                }
            }
}

module hinge_hole() {
    translate([kb_wb+0.2, 0.5, 0])
        rotate([-90, 0, kb_mid_angle])
            translate([0, 0, -4]) cylinder(r=3, h=kb_h+10);
}

//=== PCB ======================================================================
module pcb() {
    translate([edge_thickness+1, edge_thickness+1, kb_height - plate_thickness - 1.6 - 1])
        linear_extrude(1.6) // 1.6mm thick pcb
            polygon([
                [0,0],
                [kb_wb-2*edge_thickness - 3, 0],
                [kb_wb-2*edge_thickness - 11, kb_h/2 - 1],
                [kb_w-2*edge_thickness - top_center_fudge - 4, kb_h/2 - 2],
                [kb_w-2*edge_thickness - top_center_fudge - 4, kb_h-2*edge_thickness - 2],
                [0, kb_h-2*edge_thickness - 2]]);
}

//=== Main =====================================================================
module left_hand() {
    frame_color = parent_module(1) == "right_hand" ? "maroon" : "teal";
    color(frame_color, 0.9) {
        difference() {
            plate();

            key_holes();
            wire_hole();
            hinge_hole();
        }
        supports(1.5);
        hinge();
    }
    color("gray", 0.5) keys(5,6);
}

module right_hand() {
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

    color("cyan", 0.7) translate([kb_w-4, kb_h/2, 1]) rotate([0, 0, kb_mid_angle/2]) usbc();
}

keyboard();