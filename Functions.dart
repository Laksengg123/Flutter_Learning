
import 'dart:math';

void main() {
  double circle = circleArea(100);
 double rectangle = rectangleArea(100,30);
  print(squareArea);
 // double totalArea;
 // totalArea = rectangle+ circle;
 // print(totalArea);

}
   //Rectangle Area
// void rectangleArea(double length,double width) {
//   double rectangleArea = length * width;
//   print('Rectangle Area:''$rectangleArea');
// }

  // void rectangleArea(double length,double width) {
  //   double length = 100;
  //   double width = 30;
  //
  //   double rectangleArea = length * width;
  //   print('Rectangle Area:''$rectangleArea');
  // }


  //Circle Area

  // void circleArea() {
  //   double radius = 30;
  //
  //   double circleArea = pi * pow(radius, 2);
  //   print('Circle Area: ${circleArea.toStringAsFixed(2)}');
  // }

//return
double circleArea(double radius ) {

    double circleArea = pi * pow(radius, 2);
   return circleArea;
  }

//return
double rectangleArea(double length,double width) {
  double rectangleArea = length * width;
   return rectangleArea;
}

//lambda function or anonymous function

var traiangle = (double breath,double height){
  return 0.5 * breath * height;
};

//Arrow function

var squareArea = (double side) => pow(side,2);



