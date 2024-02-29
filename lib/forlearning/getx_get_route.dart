// route navigation 

import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
class Homes extends StatelessWidget {
  const Homes({super.key});

  @override
  Widget build(BuildContext context) {
    return  
          Scaffold(
            body: Center(
              child: ElevatedButton(onPressed:(){
                Get.back();// go to home page 
              }, child:Text("go back")),
            ),
           
    );
  }
}

//go to home screen but no option to return to previous screen 
//Get.off(Homes());

//Go ro home screen and cancel all previous screens/route
//Get.offAll(homes());

//go to next screen with some data
//Get.to (homes(),argumets:"data from main ");

// go to 2nd page, and receive data send from 2nd page
//var data = await Get.to(Homes());
//print ("the received data is $data");