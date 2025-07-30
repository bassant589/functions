import 'dart:io';
rectangle(int l , int w){
  return l*w;
}
square(int s){
  return s*s;
}
circle(int r){
  return 3.14*r*r;
}

main(){
print("which shape do you want to calculate");
print("1.Rectangle");
print("2.Square");
print("3.Circle");
int choice=int.parse(stdin.readLineSync()!);
if(choice==1){
  print("Enter the length and width");
  int l=int.parse(stdin.readLineSync()!);
  int w=int.parse(stdin.readLineSync()!);
  print("Area of rectangle is ${rectangle(l,w)}");
}
else if(choice==2){
  print("Enter the side of square");
  int s=int.parse(stdin.readLineSync()!);
  print("Area of square is ${square(s)}");
}
else if(choice==3){
  print("Enter the radius of circle");
  int r=int.parse(stdin.readLineSync()!);
  print("Area of circle is ${circle(r)}");
}

}