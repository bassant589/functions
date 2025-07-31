import 'dart:io';

add(double a,double b){
  return a+b;
}
sub(double a,double b){
  return a-b;
}
mul(double a,double b){
  return a*b;
}
div(double a,double b){
  return a/b;
}
void calculate(double a, double b) {
  stdout.write("Choose an operation (+, -, *, /): ");
  String choice = stdin.readLineSync()!;
  if (choice == '+') {
    print("Result: $a + $b = ${add(a, b)}");
  } else if (choice == '-') {
    print("Result: $a - $b = ${sub(a, b)}");
  } else if (choice == '*') {
    print("Result: $a * $b = ${mul(a, b)}");
  } else if (choice == '/') {
    if (b == 0) {
      print(" Error: Cannot divide by zero!");
    } else {
      print("Result: $a / $b = ${div(a, b)}");
    }
  } else {
    print("Invalid operation.");
  }
}

main(){
  String answer = "";
  do{
    print("Enter two numbers ");
    double a= double.parse(stdin.readLineSync()!);
    double b= double.parse(stdin.readLineSync()!);
    calculate(a,b);
    stdout.write("Do you want to calculate again? (yes / no): ");
    answer = stdin.readLineSync()!.toLowerCase();
  }while(answer=="yes");


}
