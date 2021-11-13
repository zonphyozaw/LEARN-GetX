import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/show_dialog.dart';

class RouteNavigation extends StatelessWidget {
  const RouteNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              //Get.off() Go to Screen but no option to return to previous screen
              //Get.offAll() Go to Screen and cancel all previous screen/routes
              //Get.to(Screen(),arguments:"Data From main"); Go to Screen with some data
              //var data = await Get.to(Screen()); Get to next screen and receive data send from home screen;
              //How to test data comming from home screen Print("$data") or Get.argument
              // Get.to(
              //     ShowDialog(),
              //     fullscreenDialog: true,
              //     transition: Transition.zoom,
              //     duration: Duration(milliseconds: 1000),
              //     curve: Curves.bounceInOut,
              // );
              var get = await Get.to(const ShowDialog(),transition: Transition.zoom,curve: Curves.bounceInOut);
              debugPrint("data is comming back from ShowDialog() $get");
            },
            child:  Text("My name is ${Get.parameters['name']}"),
          ),
        )
    );
  }
}
