import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Page 1'),
        ),
        body: BodyPage1(),
      ),
    );
  }
}

class BodyPage1 extends StatelessWidget {
  const BodyPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text('Go back'))
          ],
        ),
      ),
    );
  }
}
