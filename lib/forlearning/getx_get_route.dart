
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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


//Route Navigation for named Routes using GetX Library

void main(){
runApp(MyWidget());
}


class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      //defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: "/", page:(){ return MyWidget();}),
        GetPage(name: "/home", page:() => Homes()),
        GetPage(name: "/next screen", page: () => Homes(),transition: Transition.leftToRight)
      ], 
       home: Scaffold(

        body: Container(
          color: Colors.amber,
          child: Center(
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(onPressed:(){
                  Get.toNamed("/home");
                }, child:Text("ZZZZZZZZ"))
              ],
             ),
            ),
        )
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