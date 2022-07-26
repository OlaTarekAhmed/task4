import 'package:task4/Person.dart';
import 'package:task4/task4.dart' as task4;
import 'dart:io';

void main(List<String> arguments) {
  Person p = Person("ola", 5, "ElMahalla", 21);
  p.printdata();
  Student s = Student("ola", 5, "ElMahalla", 21, "email", 50);
  bool flag = true;

  while (flag) {
    print("enter number of operation");
    int operationNum = int.parse(stdin.readLineSync()!);
    switch (operationNum) {
      case 1:
        {
          print("enter name of subject");
          String subjectName = stdin.readLineSync()!;
          print("enter student degree");
          int degree = int.parse(stdin.readLineSync()!);
          s.subject[subjectName] = degree;
        }
        break;
      case 2:
        {
          print("exit");
          flag = false;
        }
        break;
      default:
        print("error");
        break;
    }
  }
  s.printdata();
  Students ss = Students();
  ss.addStudentName("ola");
  ss.addStudentName("rawina");
  ss.removeStudentName(0);
  ss.addStudentName("loly");
  ss.updateStudenName(0, "ahmed");
  ss.calcuLateDegree(50);
  ss.printData();
}
