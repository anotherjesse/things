module Base() {
  difference() {
    cylinder(h=10, r1=20, r2=11);
    cylinder(h=10, r1=19, r2=10);
  }
}

module Tube() {
  difference() {
    cylinder(h=70, r=11);
    cylinder(h=70, r=10);
  }
}

module Cap() {
  difference() {
    cylinder(h=20, r1=11, r2=2);
    cylinder(h=19, r1=10, r2=1);
  }
}


Base();
translate([0,0,10]) Tube();
translate([0,0,80]) Cap();
