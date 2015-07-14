// resolution
$fn  = 50;

// export mode
mode = "build";

// base plate
module base() {
    square(42);
}

// some holes
module holes() {
    translate([5.5 , 5.5 , 0]) circle(1.5);
    translate([5.5 , 36.5, 0]) circle(1.5);
    translate([36.5, 5.5 , 0]) circle(1.5);
    translate([36.5, 36.5, 0]) circle(1.5);
    translate([21  , 21  , 0]) circle(12);
}

// and some pockets
module pockets() {
    translate([0, 18, 0]) square([10, 6]);
    translate([32, 18, 0]) square([10, 6]);
}

// 3D model build
module build() {
    render() difference() {
        linear_extrude(5) base();
        linear_extrude(5) holes();
        translate([0, 0, 3.5]) 
            linear_extrude(2) 
                pockets();
    }
}

// build conditions
if      (mode == "base")    base();
else if (mode == "holes")   holes();
else if (mode == "pockets") pockets();
else                        build();
