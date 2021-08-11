import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxgetx/page1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Beranda(),
    );
  }
}

class Beranda extends StatelessWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beranda'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => Page1());
                  },
                  child: Text('Go to Page 1')),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.snackbar('title', 'message');
                  },
                  child: Text('Snackbar')),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.defaultDialog(title: "I am Dialog");
                  },
                  child: Text('Dialog'))
            ],
          ),
        ),
      ),
    );
  }
}
