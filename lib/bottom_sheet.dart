import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetX extends StatelessWidget {
  const BottomSheetX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: (){
              Get.bottomSheet(
                Container(
                  child: Wrap(
                    children: [
                      ListTile(
                        leading: Icon(Icons.wb_sunny_outlined),
                        title: Text("Light Theme"),
                        onTap: ()=>{Get.changeTheme(ThemeData.light())}
                      ),
                      ListTile(
                        leading: Icon(Icons.wb_sunny),
                        title: Text("Dark Theme"),
                        onTap: ()=>{Get.changeTheme(ThemeData.dark())},
                      )
                    ],
                  ),
                ),
                //backgroundColor: Colors.redAccent
                //elevation: 2,
                //persistent: false,
                //shape: BeveledRectangleBorder()
                //barrierColor: Colors.red
                //ignoreSafeArea: false
                //isScrollControlled: true,
                //useRootNavigator: false
                //isDismissible:true
                //enableDrag: false,
              );
            },
            child: const Text("Raise Button & theme"),
          ),
        )
    );
  }
}
