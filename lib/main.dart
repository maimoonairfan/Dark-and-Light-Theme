import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter GetX Theme"),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Get.isDarkMode
                        ? Get.changeTheme(ThemeData.light())
                         : Get.changeTheme(ThemeData.dark());
                },
                child: Icon(Icons.account_circle)),
            ),
          ],
        ),
        // body: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: [
        //       Center(
        //           child: Icon(
        //         Icons.art_track,
        //         size: 70,
        //       )),
        //       Card(
        //         child: GestureDetector(
        //           onTap: () {
        //             Get.isDarkMode
        //                 ? Get.changeTheme(ThemeData.light())
        //                 : Get.changeTheme(ThemeData.dark());
        //           },
        //           child: Container(
        //             width: 100.0,
        //             height: 30.0,
        //             child: Center(child: Text("Tap")),
        //           ),
        //         ),
        //       ),
        //     ])
      );
  }
}
