$fn=128;


module base(x=86.40,y=82.00,z=10) {
   color("Black") translate([x/2,y/2,0]) linear_extrude(z,scale=0.95) square([x,y],center=true);
}

module slot() {
   color("White") translate([10,3,0]) difference() {
      union() {
         cube([20,6,1],center=true);
         linear_extrude(6,scale=0.90) square([18.5,4.7],center=true);
      }
      translate([0,0,-2]) cube([13.2, 1.5,25],center=true);
   }
}

module rocker(clr="Silver") {
   color(clr) translate([4.25,12,0]) rotate([90,10,-90]) difference() {
       cylinder(h=8.5,r=12,center=true);
       rotate([0,0,80]) translate([7.5,7.5,-1]) cube([15,15,15],center=true);
       rotate([0,0,10]) translate([7.5,7.5,-1]) cube([15,15,15],center=true);
      translate([0,-8,0]) cube([30,8,30],center=true);
   }
}

module thing() {
   color("Silver") scale(.75) rotate([90,0,0]) rotate_extrude() translate([-2,0,0]) polygon([[0,45],[-3,45/*1:0,0,0,0*/] ,[-3,43.98] ,[-3,42.93] ,[-3,41.92] ,[-3,40.87] ,[-3,39.78] ,[-3,38.73],[-3,38/*1:0,0,1,0*/] ,[-2.28,37.3] ,[-2.45,36.29],[-3,36/*1:1,0,0,0*/] ,[-3,35],[-3,34],[-1,34],[-1,21],[-2,21],[-2,16],[-1,16],[-1,9],[-3,9],[-3,8],[-1,8],[-1,7],[-3,7],[-3,6],[-1,6],[-1,5],[-3,5],[-3,4],[-1,4],[-1,-3],[-3,-3],[-3,-7],[-1,-7],[-1,-20],[-3,-20],[-3,-23],[-1,-23],[-1,-25],[-3,-25],[-3,-47],[0,-47]]);
}

base();
translate([22,44,10]) slot();
translate([22,55,10]) slot();
translate([22,67,10]) slot();

translate([20,10,13]) rocker();
translate([32,10,13]) rocker();
translate([44,10,13]) rocker();
translate([56,10,13]) rocker("Red");

color("Red") translate([59,52,9]) linear_extrude(5,scale=.9) square([13,10],center=true);
color("Green") translate([59,65,9]) linear_extrude(5,scale=.9) square([13,10],center=true);

translate([10,40,10]) thing();
translate([75,40,10]) thing();

