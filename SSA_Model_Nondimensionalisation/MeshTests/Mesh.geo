Mesh.Algorithm=5;

//Inputs
w=300000.0/3000.0;//m
h=150000.0/3000.0;//m
r=5230.0/3000.0;//m
gridsize=2000.0/3000.0;

Point(1) = {w, h, 0, gridsize};
Point(2) = {0, h, 0, gridsize};
Point(3) = {0, 0, 0, gridsize};
Point(4) = {w, 0, 0, gridsize};
Point(5) = {w/2, h/2, 0, gridsize};
Point(6) = {(r+w/2), h/2, 0, gridsize};
Point(7) = {w/2, (r+h/2), 0, gridsize};
Point(8) = {(-r+w/2), h/2, 0, gridsize};
Point(9) = {w/2, (-r+h/2), 0, gridsize};
Line(1) = {4, 3};
Line(2) = {3, 2};
Line(3) = {2, 1};
Line(4) = {1, 4};
Circle(5) = {8, 5, 7};
Circle(6) = {7, 5, 6};
Circle(7) = {6, 5, 9};
Circle(8) = {9, 5, 8};
Line Loop(1) = {5, 6, 7, 8};
Line Loop(2) = {4, 1, 2, 3};
Ruled Surface(1) = {1};
Plane Surface(2) = {2, 1};
Physical Surface(1) = {2};
Physical Line(9) = {1};
Physical Line(10) = {2};
Physical Line(11) = {3};
Physical Line(12) = {4};
Physical Line(13) = {5, 6, 7, 8};


//surfaceVector[] = Extrude {0, 0, 0.1} {
//Surface{1,2};
//Layers{1};
//Recombine;};
//Physical Volume("internal") = surfaceVector[1];
//Physical Surface("LeftWall")=surfaceVector[2];
//Physical Surface("RightWall")=surfaceVector[4];
//Physical Surface("BottomWall")=surfaceVector[5];
//Physical Surface("TopWall")=surfaceVector[3];
