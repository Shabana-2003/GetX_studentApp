//Route Navigation for named Routes using GetX Library
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_app/forlearning/getx_get_route.dart';
void main(){
runApp(MyWidget());
}


class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: "/", page:() => MyWidget()),
        GetPage(name: "/home", page:() => Homes()),
        GetPage(name: "/next screen", page: () => Homes(),transition: Transition.leftToRight)
      ], 
       home: Scaffold(
        body: Center(
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(onPressed:(){
                Get.toNamed("/home");
              }, child:Text("ZZZZZZZZ"))
            ],
           ),
          )
        ),
       );
  }
}