import 'dart:io';
import 'dart:math';
rectangle(int l , int w){
  return l*w;
}
square(int s){
  return s*s;
}
circle(int r){
  return pi * r * r ;
}
void calculateArea(){
  print("which shape do you want to calculate");
  print("Rectangle or Square or Circle");
  String shape = stdin.readLineSync()!.toLowerCase();

  if (shape == "rectangle") {
    print("Enter the length and width");
    int l = int.parse(stdin.readLineSync()!);
    int w = int.parse(stdin.readLineSync()!);
    print("Area of rectangle is = ${rectangle(l, w)}");
  }
  else if (shape == "square") {
    print("Enter the side of square");
    int s = int.parse(stdin.readLineSync()!);
    print("Area of square is = ${square(s)}");
  }
  else if (shape == "circle") {
    print("Enter the radius of circle");
    int r = int.parse(stdin.readLineSync()!);
    print("Area of circle is = ${circle(r).toStringAsFixed(2)}");
  }
}
main(){
String answer = "";
  do {
  calculateArea();
  stdout.write("Do you want to calculate again? (yes / no): ");
  answer = stdin.readLineSync()!.toLowerCase();
}while(answer=="yes");
}
