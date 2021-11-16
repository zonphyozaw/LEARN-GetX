
import 'package:get/get.dart';
import 'package:learn_getx/student/student.dart';

class StudentController extends GetxController {
  // var student = Student();
  // void convertToUpperCase(){
  //   student.name.value = student.name.value.toUpperCase();
  // }

  var student = Student(name: 'zonzhyozaw',age: 29).obs;
  void convertToUpperCase(){
    //student.value.name = student.value.name.toString().toUpperCase();
    student.value.name = student.value.name.toString().toUpperCase();
  }
}