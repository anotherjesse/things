module Base() {
  difference() {
    cylinder(h=20, r1=15, r2=10);
    cylinder(h=20, r1=12, r2=7);
    translate([13.5,0,0]) sphere(r=4);
    translate([0, 13.5,0]) sphere(r=4);
    translate([-13.5,0,0]) sphere(r=4);
    translate([0, -13.5,0]) sphere(r=4);
    translate([9.5, 9.5,0]) sphere(r=4);
    translate([-9.5, 9.5,0]) sphere(r=4);
    translate([9.5, -9.5,0]) sphere(r=4);
    translate([-9.5, -9.5,0]) sphere(r=4);
  }
}

module Tube() {
    cylinder(h=40, r=10);
}

module Cap() {
    cylinder(h=20, r1=10, r2=2);
}

Base();
translate([0,0,20]) Tube();
translate([0,0,60]) Cap();
