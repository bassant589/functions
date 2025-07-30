import 'dart:io';

add(int x,int y){
  return  x+y;
}
sub(int x,int y){
  return x-y;
}
mul(int x,int y){
  return x*y;
}
div(int x,int y){
  return x~/y;
}

main(){
  print("Enter two numbers ");
  int x= int.parse(stdin.readLineSync()!);
  int y= int.parse(stdin.readLineSync()!);

  print("Choose your operation");
  print("1 -> Addition");
  print("2 -> Subtraction");
  print("3 -> Multiplication");
  print("4 -> Division");
  int choice=int.parse(stdin.readLineSync()!);
if(choice==1){
  print("$x + $y = ${add(x,y)}");
}
else if(choice==2) {
  print("$x - $y = ${sub(x, y)}");
}
else if(choice==3){
  print("$x * $y = ${mul(x,y)}");
}
else if(choice==4){
  print("$x / $y = ${div(x,y)}");
}



}