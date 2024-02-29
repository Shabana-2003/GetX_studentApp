import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Dialog",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dialog"),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    //  Get.defaultDialog();// can see a default dialog

                    Get.defaultDialog(
                        title: "Dialog Title",
                        middleText: "this is middile text",
                        backgroundColor:
                            const Color.fromARGB(255, 227, 135, 128),
                        radius: 20,

                        //cancel and conform action
                        textCancel: "Cancel",
                        cancelTextColor: Colors.amber,
                        textConfirm: "conform",
                        confirmTextColor: Colors.red,
                        onCancel: () {},
                        onConfirm: () {},
                        buttonColor: Colors.green,

                        //override the defauld cancel and conform
                        cancel: const Text(
                          "override cancel",
                          style:
                              TextStyle(color: Color.fromARGB(255, 3, 92, 124)),
                        ),
                        confirm: const Text(
                          "override conform",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 141, 108, 10)),
                        ),

                        //actions, its a type of button
                        actions: [
                          ElevatedButton(
                              onPressed: () {}, child: Text("action1")),
                          ElevatedButton(
                              onPressed: () {}, child: Text("action1"))
                        ],
                      //  barrierDismissible:false,//not dismiss the dialog box
                         barrierDismissible:true,// dialog box can diamissable
                        );
                  },
                  child: Text("Show dialog"))
            ],
          ),
        ),
      ),
    );
  }
}
