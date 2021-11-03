import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowDialog extends StatelessWidget {
  const ShowDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Get.defaultDialog(
              title: "Dialog",
              titleStyle: TextStyle(color: Colors.green),
              middleText: "This is GetX dialog middle text",
              middleTextStyle: TextStyle(fontWeight: FontWeight.bold),
              backgroundColor: Colors.amberAccent,
              radius: 10,
              content: Row(
                children: const [
                 // CircularProgressIndicator(),
                  SizedBox(
                    width: 16,
                  ),
                  //Text("this is GetX dialog box text expanded"),
                  //ကိုလိုချင်တဲ့ အတိုင်းတာတစ်ခုထဲကို ဝင်အောင်လုပ်မယ်ဆိုရင် parent widget ထဲက child ကို Expanded နဲ့ ငုံပေးရတယ် မငုံရင် အပြင်ကိုကျော်တက်သွားမယ်
                  Expanded(child: Text("this is GetX dialog box text expanded"),)
                ],
              ),
              // textCancel: "cancel",
              // cancelTextColor: Colors.green,
              // onCancel: (){print("cancel");},
              // cancel: Text("cancel",style: TextStyle(fontWeight: FontWeight.bold),),
              //
              // textConfirm: "confirm",
              // confirmTextColor: Colors.white,
              // onConfirm: (){print("confirm");},
              // confirm: Text("confirm",style: TextStyle(fontWeight: FontWeight.bold),),
              // buttonColor: Colors.green,
              actions: [
                ElevatedButton(onPressed: () { Get.back(); },
                child: Text("OK"),),
                ElevatedButton(onPressed: () { print("action button Cancel press"); },
                  child: Text("CANCEL"),)
              ],
              // other screen position ကိုထောက်ပီး true ဆိုရင် ပိတ်နိုင်ပါတယ် false ဆိုရင်ပိတ်လို့မရပါ
              barrierDismissible: false,
            );
            },
          child: const Text("Show Dialog"),
        ),
      )
    );
  }
}
