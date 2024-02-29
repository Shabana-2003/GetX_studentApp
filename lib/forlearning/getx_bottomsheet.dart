//Bottom sheet and dynamic theme

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
      title: "bottom sheet",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("bottom sheet"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.bottomSheet(
                      Wrap(
                        children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.wb_sunny_outlined),
                            title: Text("Light theme"),
                            onTap: () => {
                              Get.changeTheme(ThemeData.light())
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.wb_sunny),
                            title: Text("Dart theme"),
                            onTap: () => {
                              Get.changeTheme(ThemeData.dark())
                            },
                          ),
                        ],
                      ));
                  },
                  child: Text("bottom sheet"))
            ],
          ),
        ),
      ),
    );
  }
}
