import 'package:flutter/material.dart';
import 'package:flutter_screen_lock/flutter_screen_lock.dart';

import 'package:get/get.dart';

import 'package:screen_lock/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final inputController = InputController();
    return Scaffold(
      backgroundColor: Color(0xff191e29),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 500,
              width: 500,
              child: Column(
                children: [
                  Image.network(
                      "https://img.freepik.com/free-vector/flat-code-logo-collection_23-2148829940.jpg?size=338&ext=jpg"),
                ],
              ),
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(30),
                  primary: Colors.brown,
                  animationDuration: Duration(
                    seconds: 4,
                  ),
                  side: BorderSide(
                    color: Colors.amber,
                    width: 5,
                  ),
                  shape: CircleBorder(),
                  elevation: 20,
                ),
                onPressed: () {
                  Get.offAllNamed(Routes.NEXT);
                  screenLock(
                    context: context,
                    correctString: '1111',
                    inputController: inputController,
                    didConfirmed: (matchedText) {
                      print(matchedText);
                    },
                    screenLockConfig: ScreenLockConfig(
                      backgroundColor: Color(0xff240046),
                    ),
                  );

                  inputController.unsetConfirmed();
                },
                child: Text(
                  "press",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
