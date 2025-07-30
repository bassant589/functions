import 'dart:io';

String StudentName(){
  stdout.write("Enter your name : ");
  return stdin.readLineSync()!;
}

List<int> GetGrade(){
  List<int> grades=[];

  for(int i=1;i<=5;i++){
   print("Enter the mark of the subject $i out of 100");
   int mark=int.parse(stdin.readLineSync()!);
if(mark>100 || mark<0){
  print("Invalid number");
  i--;
  continue;
}

   grades.add(mark);
  }
  return grades;
}



main(){
String name=StudentName();

List<int> grades = GetGrade();

int TotalGrade=0;
for(int i=0;i<grades.length;i++){
  TotalGrade+=grades[i];
}
double Average=TotalGrade/grades.length;
double Percentage=(TotalGrade/500)*100;
print("---------------------------------------------------");
print("Name : $name ");
print("Total Grade : $TotalGrade");
print("Average : ${Average.toStringAsFixed(2)}");
print("Percentage : $Percentage%");

if(Percentage>=50){
  print("Student statues: passed :) ");
}
else{
  print("Student statues: failed :( ");
}


}