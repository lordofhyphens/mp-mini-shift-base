thick=15;
length=242;
width=178;
$fn=90;

difference() {
    hull() {
        for (i = [0+4, width-4]) {
            for (j = [0+4, length-4]) {
                translate([i,j,0])
                    cylinder(r=4, h=thick, $fn=90);
            }
        }
    }
    translate([0,-5,0])
    hull() {
        for (i = [0+4+10, (width-4)-10]) {
            for (j = [0+4+10, (length-4)]) {
                translate([i,j,0])
                    cylinder(r=4, h=thick, $fn=90);
            }
        }
    }
    translate([38,length-20,0])
    cube([width-(38+38),40,thick]);
    for (j = [7, 121, 235]) {
        translate([4.5, j, 0]) cylinder(d=3.6, h=thick+10);
        translate([width-4.5, j, 0]) cylinder(d=3.6, h=thick+10);
    }

    // vents along long edge
    for (j = [15: 20 : length -15])
    translate([-5,j, 4])
    rotate([90,-90,90])
    #hull() {
        cylinder(r=2, h=width+10);
        translate([7,0,0])
            cylinder(r=2, h=width+10);
    }
    // vents along short edge
    for (j = [14: 10 : 28])
    translate([j,0, 11])
    rotate([-90,90,0])
    #hull() {
        cylinder(r=2, h=length+10);
        translate([7,0,0])
            cylinder(r=2, h=length+10);
    }
    for (j = [width-24: 10 : width-10])
    translate([j,0, 11])
    rotate([-90,90,0])
    #hull() {
        cylinder(r=2, h=length+10);
        translate([7,0,0])
            cylinder(r=2, h=length+10);
    }
}
