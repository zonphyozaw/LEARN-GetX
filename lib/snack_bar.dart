import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxSnackbar extends StatelessWidget {
  const GetxSnackbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Get.snackbar(
                "title",
                "message",
                snackPosition: SnackPosition.BOTTOM,
                // titleText: Text("zpz"),
                // messageText: Text("hello world",style: TextStyle(color: Colors.blue),
                //colorText: Colors.redAccent,
                //borderRadius: 30,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                //animationDuration: Duration(milliseconds: 2000),
                backgroundGradient: const LinearGradient(colors: [Colors.purple,Colors.green]),
                // borderColor: Colors.black26,borderWidth: 2,
                // boxShadows: [
                //   BoxShadow(color: Colors.blueGrey,offset: Offset(20,30),spreadRadius: 20,blurRadius: 30)
                // ]
                isDismissible: true,
                dismissDirection: SnackDismissDirection.HORIZONTAL,
                forwardAnimationCurve: Curves.bounceInOut,
                duration: const Duration(milliseconds: 8000),
                icon: const Icon(Icons.wifi_off,color: Colors.redAccent,),
                shouldIconPulse: true,
                //leftBarIndicatorColor: Colors.blue
                //mainButton: TextButton(onPressed: (){}, child: Text("click"),),
                // onTap: (val){
                //   print("Snack Bar Click");
                // },
                // overlayBlur: 10,
                // overlayColor: Colors.green
                //showProgressIndicator: true,
                //progressIndicatorBackgroundColor: Colors.deepOrange
                //progressIndicatorValueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                //reverseAnimationCurve: Curves.bounceInOut,
                // snackbarStatus: (val){
                //   print(val);
                // }
                userInputForm: Form(child: Row(
                  children: const [
                    Expanded(
                      child: TextField(),
                    )
                  ],
                ))
            );},
          child: const Text("SnackBar"),
        ),
      )
    );
  }
}
