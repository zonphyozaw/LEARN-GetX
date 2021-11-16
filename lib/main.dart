import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:learn_getx/route_navigation.dart';
import 'package:learn_getx/student/student_controller.dart';
import 'student/student.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //var studen = Student();
  ///final student = Student(name: "zonphyozaw",age: 25).obs;
  StudentController studentController = Get.put(StudentController());
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(name: "/routenav", page: ()=> const RouteNavigation(),transition: Transition.leftToRight ),
      ],
      //unknownRoute ကိုပြန်ခေါ်ချင်ရင်တော့ /x route နဲ့ခေါ်ပါတယ်
      unknownRoute:  GetPage(name: "/unknown", page: () => const RouteNavigation() ,),
      home: Scaffold(
        body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () { Get.toNamed("/routenav?name=zpz&content=Flutter GetX"); },
                child: Text("click me"),
              ),
              Obx(() => Text("${studentController.student.value.name}")),
              ElevatedButton(onPressed: (){
                studentController.convertToUpperCase();
              }, child: const Text("change")),
            ],
          )
        ),
      ),
    );
  }
}


