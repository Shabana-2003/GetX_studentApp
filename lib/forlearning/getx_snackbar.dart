//snackbar

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
      title: "SnackBar...",
      home: Scaffold(
        appBar: AppBar(
          title: Text("snackbar"),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.snackbar(
                      "Snackbar", "GetX is very simple...",
                      snackPosition: SnackPosition.BOTTOM,

                      // titleText: Text("another title"),
                      // messageText: Text("another message",
                      //     style: TextStyle(color: Colors.amber),),

                      colorText: Color.fromARGB(
                          255, 0, 0, 0), // all text color will blue
                      backgroundColor: Color.fromARGB(255, 107, 24, 99),
                      borderRadius: 40,
                      margin: EdgeInsets.all(26),
                      maxWidth: 300,
                      animationDuration: Duration(milliseconds: 3000),
                      backgroundGradient: LinearGradient(colors: [
                        Color.fromARGB(255, 227, 92, 209),
                        Color.fromARGB(255, 108, 16, 122)
                      ]),
                      borderColor: Color.fromARGB(255, 72, 24,
                          75), // if implement this must want to add borderWidth
                      borderWidth: 1,

                      boxShadows: const [
                        BoxShadow(
                            color: Color.fromARGB(255, 238, 109, 210),
                            offset: Offset(30, 50),
                            spreadRadius: 2,
                            blurRadius: 50)
                      ],

                      isDismissible: true,

                      overlayBlur: 5,
                      overlayColor: Color.fromARGB(255, 232, 178, 224),
                    );
                  },
                  child: Text("Flutter Snackbar"))
            ],
          ),
        ),
      ),
    );
  }
}
