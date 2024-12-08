//+
Point(1) = {0, 0, 0, 1.0};
//+
Point(2) = {15, 0, 0, 1.0};
//+
Point(3) = {15, 10, 0, 1.0};
//+
Point(4) = {0, 10, 0, 1.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 1};
//+
Point(5) = {1.5, 4.5, 0, 0.1};
//+
Point(6) = {1.5, 5.5, 0, 0.1};
//+
Point(7) = {2.5, 5.5, 0, 0.1};
//+
Point(8) = {2.5, 4.5, 0, 0.1};
//+
Line(5) = {6, 5};
//+
Line(6) = {5, 8};
//+
Line(7) = {8, 7};
//+
Line(8) = {7, 6};
//+
Rotate{{0,0,1},{2,5,0},Pi/6}{Point{5};}
//+
Rotate{{0,0,1},{2,5,0},Pi/6}{Point{6};}
//+
Rotate{{0,0,1},{2,5,0},Pi/6}{Point{7};}
//+
Rotate{{0,0,1},{2,5,0},Pi/6}{Point{8};}
//+
Curve Loop(1) = {3, 4, 1, 2};
//+
Curve Loop(2) = {8, 5, 6, 7};
//+
Plane Surface(1) = {1, 2};
//+
Extrude {0, 0, 1} {
  Surface{1}; 
  Layers{1};
  Recombine;
}
//+
Physical Surface("in", 51) = {25};
//+
Physical Surface("out", 52) = {33};
//+
Physical Surface("top", 53) = {21};
//+
Physical Surface("bottom", 54) = {29};
//+
Physical Surface("square", 55) = {49, 41, 45, 37};
//+
Physical Surface("front", 56) = {50};
//+
Physical Surface("back", 57) = {1};
//+
Physical Volume("vol", 58) = {1};
