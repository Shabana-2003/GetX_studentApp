// route navigation 

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_app/forlearning/getx_get_route.dart';

void main(){
runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
        home: Scaffold(
        body: Center(
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(onPressed:(){
                Get.to(Homes(),
                //fullscreenDialog: true,
                duration: Duration(milliseconds: 3000)
                );// go to home page 
              }, child:Text("go to home"))
            ],
           ),
          )
        ),
    );
  }
}