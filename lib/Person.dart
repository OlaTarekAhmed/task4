import 'dart:io';

class Person {
  late String name;
  late int id;
  late String address;
  late int age;
  Person(this.name, this.id, this.address, this.age);
  void printdata() {
    print(
        "person name is ${this.name}, person id is ${this.id},person address is ${this.address},person age is ${this.age}");
  }
}

class Student extends Person {
  late String email;
  late int phoneNum;

  Map<dynamic, dynamic> subject = {};
  Student(super.name, super.id, super.address, super.age, this.email,
      this.phoneNum);
  void printdata() {
    print(
        "student name is ${this.name}, student id is ${this.id},student address is ${this.address},student age is ${this.age}, student email is ${this.email}, student phone is ${this.phoneNum}, student supject&degree ${this.subject}");
  }
}

class Students {
  List studentName = [];
  addStudentName(String s) {
    studentName.add(s);
  }

  removeStudentName(int id) {
    studentName.removeAt(id);
  }

  updateStudenName(int i, String a) {
    studentName[i] = a;
  }

  calcuLateDegree(int studentDegree) {
    if (studentDegree >= 50) {
      print("succeed");
    } else {
      print("fail");
    }
  }

  printData() {
    print(studentName);
  }
}
