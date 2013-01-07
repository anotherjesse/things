module L(size) {
  union() {
    Block(size);
    translate([size,0,0]) Block(size);
    translate([size*2,0,0]) Block(size);
    translate([size*2,size,0]) Block(size);
  }
}

module Line(size) {
  union() {
    Block(size);
    translate([size,0,0]) Block(size);
    translate([size*2,0,0]) Block(size);
    translate([size*3,0,0]) Block(size);
  }
}

// you don't need the 'other' s since you can flip it in 3d
module S(size) {
  union() {
    Block(size);
    translate([size,0,0]) Block(size);
    translate([size,size,0]) Block(size);
    translate([size*2,size,0]) Block(size);
  }
}

module T(size) {
  union() {
    Block(size);
    translate([size,0,0]) Block(size);
    translate([size,size,0]) Block(size);
    translate([size*2,0,0]) Block(size);
  }
}

module Block(size) {
  delta = size/20;
  subblock = size-(2*delta);
  union() {
    translate([delta,   delta,   delta  ]) cube([subblock, subblock, subblock]);
    translate([0,       delta,   delta  ]) cube([subblock, subblock, subblock]);
    translate([2*delta, delta,   delta  ]) cube([subblock, subblock, subblock]);
    translate([delta,   0,       delta  ]) cube([subblock, subblock, subblock]);
    translate([delta,   2*delta, delta  ]) cube([subblock, subblock, subblock]);
    translate([delta,   delta,   0      ]) cube([subblock, subblock, subblock]);
    translate([delta,   delta,   2*delta]) cube([subblock, subblock, subblock]);
  }
}

module Set(size) {
  L(size);
  translate([0, size*2.5,0]) S(size);
  translate([0, size*5,0]) T(size);
  translate([0, size*7.5,0]) Line(size);
}

Set(15);
